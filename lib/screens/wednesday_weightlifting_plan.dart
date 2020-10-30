import 'package:flutter/material.dart';

class WednesdayPlan extends StatefulWidget {
  String text;
  WednesdayPlan(this.text);
  @override
  _WednesdayPlanState createState() => _WednesdayPlanState();
}

class _WednesdayPlanState extends State<WednesdayPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(84, 110, 122, 1),
        appBar: AppBar(
          title: Text("Wednesday ${widget.text} Plan"),
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
