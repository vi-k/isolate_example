import 'package:freezed_annotation/freezed_annotation.dart';

part 'command.freezed.dart';
part 'command.g.dart';

@freezed
class Command with _$Command {
  const Command._();

  const factory Command.echo(String string) = _Echo;

  const factory Command.ls([String? mask]) = _Ls;

  const factory Command.nothing() = _Nothing;

  const factory Command.dataHandle() = _DataHandle;

  const factory Command.exit() = _Exit;

  const factory Command.error() = _Error;

  factory Command.fromJson(Map<String, dynamic> json) =>
      _$CommandFromJson(json);

  @override
  String toString() => when(
        echo: (string) => 'echo $string',
        ls: (mask) => mask == null ? 'ls' : 'ls $mask',
        nothing: () => 'nothing',
        dataHandle: () => 'dataHandle',
        exit: () => 'exit',
        error: () => 'error',
      );
}
