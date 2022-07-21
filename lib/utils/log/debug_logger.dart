import 'package:flutter/foundation.dart';

class DebugLogger {
  DebugLogger._();

  static void log(Object? object) {
    if (kDebugMode) {
      print(object);
    }
  }

  static void logException(Object exception, [StackTrace? stackTrace]) {
    if (kDebugMode) {
      print(exception);
      print(stackTrace);
    }
  }
}
