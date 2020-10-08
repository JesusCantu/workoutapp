import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import 'dart:io';

void main() {
  group('Workout App - ', () {
    FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });
    group("Happy paths -", () {
      test("should be able to sign up for a new account", () async {
        //Tap Sign Up button
        final signUpButtonFinder = find.byValueKey('sign-up-button');
        await driver.tap(signUpButtonFinder);

        //Tap First Name text form
        final firstNameButtonFinder = find.byValueKey('firstname-text');
        await driver.tap(firstNameButtonFinder);
        await driver.enterText('test_first_name');

        //Tap Last Name text form
        final lastNameButtonFinder = find.byValueKey('lastname-text');
        await driver.tap(lastNameButtonFinder);
        await driver.enterText('test_last_name');

        //Tap Username text form
        final usernameButtonFinder = find.byValueKey('username-text');
        await driver.tap(usernameButtonFinder);
        await driver.enterText('test_username');

        //Tap Password text form
        final passwordButtonFinder = find.byValueKey('password-text');
        await driver.tap(passwordButtonFinder);
        await driver.enterText('test_password');

        //Tap second Sign Up button
        final secondSignUpButtonFinder = find.byValueKey('sign-up-button-2');
        await driver.tap(secondSignUpButtonFinder);
      });
      test("should be able to log in with an existing account", () async {
        //Tap Username text form
        final usernameButtonFinder = find.byValueKey('username-text');
        await driver.tap(usernameButtonFinder);
        await driver.enterText('test_username');

        //Tap Password text form
        final passwordButtonFinder = find.byValueKey('password-text');
        await driver.tap(passwordButtonFinder);
        await driver.enterText('test_password');

        //Tap Second Sign In button
        final secondSignUpButtonFinder = find.byValueKey('sign-in-button-2');
        await driver.tap(secondSignUpButtonFinder);

        //Expect to see "Home"
        final homeTextFinder = find.byValueKey('home-text');
        expect(await driver.getText(homeTextFinder), "Home");
      });
      test("should be able to view body info", () async {
        //Tap Body Info
        final bodyInfoButtonFinder = find.byValueKey('body-info-btn');
        await driver.tap(bodyInfoButtonFinder);

        //Expect to see "Body Info"
        final bodyInfoTextFinder = find.byValueKey('body-info-text');
        expect(await driver.getText(bodyInfoTextFinder), "Body Info");
      });
      test("should be able to view current workout plan", () async {});
      test("should be able to add a pre-set workout plan", () async {});
      test("should be able to add a custom workout plan", () async {});
      test("should be able to create a workout plan", () async {});
      test("should be able to view statistics from workout sessions",
          () async {});
    });
  });
}
