import 'package:flutter/material.dart';

class ThursdayPlan extends StatefulWidget {
  String text;
  ThursdayPlan(this.text);
  @override
  _ThursdayPlanState createState() => _ThursdayPlanState();
}

class _ThursdayPlanState extends State<ThursdayPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(84, 110, 122, 1),
        appBar: AppBar(
          title: Text("Thursday ${widget.text} Plan"),
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
