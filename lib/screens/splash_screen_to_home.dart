import 'package:flutter/material.dart';
import 'dart:async';

import 'package:workoutapp/screens/homescreen.dart';

class SplashScreenHome extends StatefulWidget {
  @override
  _SplashScreenHomeState createState() => _SplashScreenHomeState();
}

class _SplashScreenHomeState extends State<SplashScreenHome> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds: 2);
    return new Timer(duration, navigateToLoginScreen);
  }

  navigateToLoginScreen() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color.fromRGBO(38, 50, 56, 1),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: <Widget>[
          Text(
            "WORKOUT APP",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 48, color: Colors.white),
          ),
        ],
      )),
    ));
  }
}
