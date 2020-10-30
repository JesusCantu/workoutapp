import 'package:flutter/material.dart';

class DayPlan extends StatefulWidget {
  String text;
  String dayPlan;
  DayPlan(this.text, this.dayPlan);
  @override
  _DayPlanState createState() => _DayPlanState();
}

class _DayPlanState extends State<DayPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(84, 110, 122, 1),
        appBar: AppBar(
          title: Text("${widget.dayPlan} ${widget.text} Plan"),
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
