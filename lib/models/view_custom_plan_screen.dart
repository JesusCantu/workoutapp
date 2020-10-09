import 'package:flutter/material.dart';

class YourCustomPlans extends StatefulWidget {
  @override
  _YourCustomPlans createState() => _YourCustomPlans();
}

class _YourCustomPlans extends State<YourCustomPlans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(84, 110, 122, 1),
        appBar: AppBar(
          title: Text("Custom Plans"),
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
