import 'package:ansicolor/ansicolor.dart';

class Log {
  Log(this.pen);

  final AnsiPen pen;

  bool enabled = true;

  void call(dynamic echo) {
    if (enabled) {
      print(pen(echo.toString()));
    }
  }
}
