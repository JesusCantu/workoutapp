import 'package:flutter/material.dart';
import 'package:workoutapp/models/add_plan_screen.dart';

class YourStretchPlans extends StatefulWidget {
  @override
  _YourStretchPlans createState() => _YourStretchPlans();
}

class _YourStretchPlans extends State<YourStretchPlans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(84, 110, 122, 1),
        appBar: AppBar(
          title: Text("View Stretching Plans"),
          key: Key("your-stretch-plans-text"),
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
