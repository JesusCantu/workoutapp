import 'package:flutter/material.dart';

class FridayPlan extends StatefulWidget {
  String text;
  FridayPlan(this.text);
  @override
  _FridayPlanState createState() => _FridayPlanState();
}

class _FridayPlanState extends State<FridayPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(84, 110, 122, 1),
        appBar: AppBar(
          title: Text("Friday ${widget.text} Plan"),
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
