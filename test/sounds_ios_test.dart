import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sounds_ios/sounds_ios.dart';

void main() {
  const MethodChannel channel = MethodChannel('sounds_ios');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await SoundsIos.platformVersion, '42');
  });
}
