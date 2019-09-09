import 'dart:async';

import 'package:flutter/services.dart';

class FlutterGenericPlugin {
  static const MethodChannel _channel =
      const MethodChannel('flutter_generic_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  int _count = 0;

  add({int number = 1}) {
    _count = _count + number;
    return _count;
  }
}

class OtherClass {
  String _name = 'Hello World';

  get getName => _name;
}
