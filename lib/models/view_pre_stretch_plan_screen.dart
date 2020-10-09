import 'package:flutter/material.dart';

class YourPreStretchingPlans extends StatefulWidget {
  @override
  _YourPreStretchingPlans createState() => _YourPreStretchingPlans();
}

class _YourPreStretchingPlans extends State<YourPreStretchingPlans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(84, 110, 122, 1),
        appBar: AppBar(
          title: Text("View Stretching Plans"),
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
