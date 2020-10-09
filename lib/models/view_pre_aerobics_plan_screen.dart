import 'package:flutter/material.dart';

class YourPreAerobicsPlans extends StatefulWidget {
  @override
  _YourPreAerobicsPlans createState() => _YourPreAerobicsPlans();
}

class _YourPreAerobicsPlans extends State<YourPreAerobicsPlans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(84, 110, 122, 1),
        appBar: AppBar(
          title: Text("View Aerobics Plans"),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(30, 50, 56, 1),
          elevation: 0,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
        ));
  }
}
