import 'package:flutter/foundation.dart';

class Log {
  static v(String tag, String? log) {
    if (kDebugMode) {
      print('${DateTime.now()} 📓 $tag: $log');
    }
  }

  static d(String tag, String? log) {
    if (kDebugMode) {
      print('${DateTime.now()} 🍒 $tag: $log');
    }
  }

  static e(String tag, String? log) {
    if (kDebugMode) {
      print('${DateTime.now()} 📕 $tag: $log');
    }
  }

  static w(String tag, String? log) {
    if (kDebugMode) {
      print('${DateTime.now()} 📙 $tag: $log');
    }
  }

  static i(String tag, String? log) {
    if (kDebugMode) {
      print('${DateTime.now()} 📗 $tag: $log');
    }
  }
}