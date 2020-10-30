import 'package:flutter/material.dart';

class SaturdayPlan extends StatefulWidget {
  String text;
  SaturdayPlan(this.text);
  @override
  _SaturdayPlanState createState() => _SaturdayPlanState();
}

class _SaturdayPlanState extends State<SaturdayPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(84, 110, 122, 1),
        appBar: AppBar(
          title: Text("Saturday ${widget.text} Plan"),
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
