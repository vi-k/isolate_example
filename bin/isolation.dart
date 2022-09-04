import 'dart:async';
import 'dart:isolate';
import 'dart:typed_data';

import 'package:ansicolor/ansicolor.dart';
import 'package:isolation/isolation.dart';
import 'package:isolation/src/log.dart';

final Log debug = Log(AnsiPen()..blue());
final Log log = Log(AnsiPen()..green(bold: true));
final Log echo = Log(AnsiPen()..xterm(214));
final Log error = Log(AnsiPen()..red());

Future<void> main(List<String> arguments) async {
  ansiColorDisabled = false;

  debug('start');

  await startCommander(showDebugInfo: false);
  await startCommander(showDebugInfo: true);
  await startCommander(showDebugInfo: true, withError: true);

  debug('exit when done');
}

Future<void> startCommander({
  bool withError = false,
  bool showDebugInfo = false,
}) async {
  final receivePort = ReceivePort();
  final exitPort = ReceivePort();
  final errorPort = ReceivePort();

  debug.enabled = showDebugInfo;
  log('----------------------------------------');
  debug('start commander');

  // Стартуем изолят с обработкой выхода и ошибок, с обменом данными между
  // изолятами.
  await Isolate.spawn<SendPort>(
    commander,
    receivePort.sendPort,
    onExit: exitPort.sendPort,
    onError: errorPort.sendPort,
    // От наличия имени будет зависеть, печатать ли отладочную информацию
    debugName: showDebugInfo ? 'commander' : '',
  );

  // В конце нам нужно будет дождаться окончания работы изолята.
  final exitFuture = handleFirstOrNullWhenClose<dynamic>(exitPort)
      .then<void>((dynamic value) async {
    debug('commander onFinish start (1 sec)');

    receivePort.close();
    await Future<void>.delayed(const Duration(seconds: 1));

    debug('commander onFinish end');
  });

  // ...и завершения обработки ошибки.
  final errorFuture = handleFirstOrNullWhenClose<dynamic>(errorPort)
      .then((dynamic value) async {
    debug('commander onError start (2 sec)');

    (value as List?)?.forEach(error);
    exitPort.close();
    await Future<void>.delayed(const Duration(seconds: 2));

    debug('commander onError end');
  });

  // Оказывается, мы не можем несколько раз запускать await for для потока.
  // Ругается, что listener уже есть. Почему он его не сбрасывает, когда
  // await for заканчивается?
  final echoStream = receivePort.asBroadcastStream();
  final commanderPort = await getSendPort(echoStream);
  debug('port received');

  cmd(commanderPort, const Command.echo('Hello, world!'));
  await getEcho(echoStream);

  if (withError) {
    cmd(commanderPort, const Command.error());
    await getEcho(echoStream);
  }

  cmd(commanderPort, const Command.ls('*.dart'));
  await getEcho(echoStream);

  cmd(commanderPort, const Command.ls());
  await getEcho(echoStream);

  cmd(commanderPort, const Command.nothing());
  await getEcho(echoStream);

  cmd(commanderPort, const Command.dataHandle());
  final data = Int8List.fromList(List.generate(12, (index) => index + 1));
  log('data: $data');
  commanderPort.send(TransferableTypedData.fromList([data]));

  final result = (await getFirstOrNull(echoStream) as TransferableTypedData?)
      ?.materialize()
      .asInt8List();
  echo('result: $result');

  cmd(commanderPort, const Command.exit());
  await getEcho(echoStream);

  cmd(commanderPort, const Command.echo('after exit'));
  await getEcho(echoStream);

  receivePort.close();

  errorPort.close();
  await errorFuture;

  exitPort.close();
  await exitFuture;
}

Future<T?> handleFirstOrNullWhenClose<T>(Stream<T> stream) async {
  T? value;

  await for (value in stream) {
    break;
  }

  return value;
}

void cmd(SendPort commandepPort, Command cmd) {
  if (debug.enabled) {
    debug('send command: $cmd');
  } else {
    log('> $cmd');
  }
  commandepPort.send(cmd);
}

Future<SendPort> getSendPort(Stream<dynamic> stream) async {
  await for (final value in stream) {
    if (value is SendPort) {
      return value;
    } else {
      throw Exception('$value is not SendPort');
    }
  }

  throw Exception('no data');
}

Future<dynamic> getFirstOrNull(Stream<dynamic> stream) async {
  await for (final row in stream) {
    return row;
  }

  return null;
}

Future<void> getEcho(Stream<dynamic> stream) async {
  await for (final row in stream) {
    if (row == null) return;

    if (row is String) {
      echo(row);
    } else {
      throw Exception('$row not String');
    }
  }
}
