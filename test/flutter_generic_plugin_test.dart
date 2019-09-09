import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_generic_plugin/flutter_generic_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_generic_plugin');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterGenericPlugin.platformVersion, '42');
  });
}