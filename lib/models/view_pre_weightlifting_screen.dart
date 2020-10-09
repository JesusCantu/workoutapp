import 'package:flutter/material.dart';

class YourPreWeightLiftingPlans extends StatefulWidget {
  @override
  _YourPreWeightLiftingPlans createState() => _YourPreWeightLiftingPlans();
}

class _YourPreWeightLiftingPlans extends State<YourPreWeightLiftingPlans> {
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
