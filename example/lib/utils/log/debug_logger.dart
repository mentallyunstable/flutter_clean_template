import 'package:example/_import.dart';
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
      print('*** Exception ***');
      print(exception);
      print(stackTrace);
    }
  }

  static void logNetworkError(String error, Object exception,
      [StackTrace? stackTrace]) {
    if (kDebugMode) {
      print('*** Network error: $error ***');
      print(exception);
      print(stackTrace);
    }
  }
}
