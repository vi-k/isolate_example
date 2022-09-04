import 'dart:async';
import 'dart:isolate';

import 'package:ansicolor/ansicolor.dart';
import 'package:async/async.dart';

import 'command.dart';
import 'log.dart';

Future<void> commander(SendPort sender) async {
  ansiColorDisabled = false;
  final debug = Log(AnsiPen()..blue(bold: true))
    ..enabled = Isolate.current.debugName?.isNotEmpty == true;

  debug('commander started');

  final receiver = ReceivePort();
  final queue = StreamQueue<Object?>(receiver);

  sender.send(receiver.sendPort);
  debug('port sended');

  var exit = false;
  while (!exit) {
    final value = await queue.next;

    debug('received: $value');

    if (value is Command) {
      var terminateEcho = true;

      await value.when(
        echo: (string) {
          sender.send(string);
        },
        ls: (mask) {
          sender
            ..send('ls ${mask ?? '*.*'}')
            ..send('1) ...')
            ..send('2) ...')
            ..send('3) ...');
        },
        nothing: () {},
        dataHandle: () async {
          final data = (await queue.next as TransferableTypedData)
              .materialize()
              .asInt8List();
          debug('data: $data');

          final length = data.length;
          for (var i = 0; i < length ~/ 2; i++) {
            final n = length - i - 1;
            final swap = data[i];
            data[i] = data[n];
            data[n] = swap;
          }

          sender.send(
            TransferableTypedData.fromList([data]),
          );
          terminateEcho = false;
        },
        error: () => throw Exception('test'),
        exit: () {
          sender.send('Bye bye');
          exit = true;
        },
      );

      if (terminateEcho) sender.send(null);
    } else {
      print('throw');
      throw Exception('$value not a command');
    }
  }

  await queue.cancel();
  receiver.close();

  debug('commander finished');
}
