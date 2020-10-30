import 'package:flutter/material.dart';

class MondayPlan extends StatefulWidget {
  String text;
  MondayPlan(this.text);
  @override
  _MondayPlanState createState() => _MondayPlanState();
}

class _MondayPlanState extends State<MondayPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(84, 110, 122, 1),
        appBar: AppBar(
          title: Text("Monday ${widget.text} Plan"),
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
