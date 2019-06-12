import 'dart:io';

import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  new Directory('screenshots').create();

  takeScreenshot(FlutterDriver driver, String path) async {
    final List<int> pixels = await driver.screenshot();
    final File file = new File(path);
    await file.writeAsBytes(pixels);
    print(path);
  }

  group('My App Scenario 1', () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('Greeter State  initalize with "Hello from State"', () async {
      expect(await driver.getText(find.byValueKey('GreeterState-text')),
          'Hello from State');
      await takeScreenshot(driver, 'screenshots/main.png');
    });

    test('Greeter State change message to  "Hello World" after tap', () async {
      expect(await driver.getText(find.byValueKey('GreeterState-text')),
          'Hello from State');
      await driver.tap(find.byValueKey('GreeterState-Gesture'));
      await takeScreenshot(driver, 'screenshots/main_state_tapped.png');
      expect(await driver.getText(find.byValueKey('GreeterState-text')),
          'Hello from GreeterState');
    });
  });
}
