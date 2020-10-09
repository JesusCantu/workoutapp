import 'package:flutter/material.dart';
import 'package:workoutapp/models/add_plan_screen.dart';

class YourWeightLiftingPlans extends StatefulWidget {
  @override
  _YourWeightLiftingPlans createState() => _YourWeightLiftingPlans();
}

class _YourWeightLiftingPlans extends State<YourWeightLiftingPlans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(84, 110, 122, 1),
        appBar: AppBar(
          title: Text("View Weightlifting Plans"),
          key: Key("your-weightlifting-plans-text"),
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
