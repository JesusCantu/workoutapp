import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import 'dart:io';

void main(){
  group('Workout App - ',(){
    FlutterDriver driver;
    final timeoutV =
      Timeout.factor(int.tryParse(Platform.environment["CMTV"] ?? '1'));

    setUpAll(() async{
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if(driver != null){
        driver.close();
      }
    });

    

  });
}