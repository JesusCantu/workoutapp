import 'package:flutter/material.dart';

class TuesdayPlan extends StatefulWidget {
  String text;
  TuesdayPlan(this.text);
  @override
  _TuesdayPlanState createState() => _TuesdayPlanState();
}

class _TuesdayPlanState extends State<TuesdayPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(84, 110, 122, 1),
        appBar: AppBar(
          title: Text("Tuesday ${widget.text} Plan"),
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
