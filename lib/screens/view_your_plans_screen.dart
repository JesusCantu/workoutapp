import 'package:flutter/material.dart';
import 'package:workoutapp/screens/monday_weightlifting_plan.dart';
import 'package:workoutapp/screens/tuesday_weightlifting_plan.dart';
import 'package:workoutapp/screens/wednesday_weightlifting_plan.dart';
import 'package:workoutapp/screens/thursday_weightlifting_plan.dart';
import 'package:workoutapp/screens/friday_weightlifting_plan.dart';
import 'package:workoutapp/screens/saturday_weightlifting_plan.dart';
import 'package:workoutapp/screens/sunday_weightlifting_plan.dart';

class ViewYourPlans extends StatefulWidget {
  String text;
  ViewYourPlans(this.text);
  @override
  _ViewYourPlans createState() => _ViewYourPlans();
}

class _ViewYourPlans extends State<ViewYourPlans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(84, 110, 122, 1),
        appBar: AppBar(
          title: Text("View ${widget.text} Plans"),
          key: Key("your-plans-text"),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(30, 50, 56, 1),
          elevation: 0,
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              ButtonTheme(
                minWidth: 350.0,
                height: 70,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: RaisedButton(
                  color: Color.fromRGBO(30, 50, 56, 1),
                  disabledTextColor: Colors.black,
                  textColor: Colors.white,
                  child: Text(
                    "Monday",
                    style: TextStyle(fontSize: 20),
                  ),
                  key: Key('stretches-button'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MondayPlan(widget.text)));
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ButtonTheme(
                minWidth: 350.0,
                height: 70,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: RaisedButton(
                  color: Color.fromRGBO(30, 50, 56, 1),
                  disabledTextColor: Colors.black,
                  textColor: Colors.white,
                  child: Text(
                    "Tuesday",
                    style: TextStyle(fontSize: 20),
                  ),
                  key: Key('aerobics-button'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TuesdayPlan(widget.text)));
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ButtonTheme(
                minWidth: 350.0,
                height: 70,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: RaisedButton(
                  color: Color.fromRGBO(30, 50, 56, 1),
                  disabledTextColor: Colors.black,
                  textColor: Colors.white,
                  child: Text(
                    "Wednesday",
                    style: TextStyle(fontSize: 20),
                  ),
                  key: Key('weightlifting-button'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WednesdayPlan(widget.text)));
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ButtonTheme(
                minWidth: 350.0,
                height: 70,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: RaisedButton(
                  color: Color.fromRGBO(30, 50, 56, 1),
                  disabledTextColor: Colors.black,
                  textColor: Colors.white,
                  child: Text(
                    "Thursday",
                    style: TextStyle(fontSize: 20),
                  ),
                  key: Key('add-a-plan-button'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ThursdayPlan(widget.text)));
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ButtonTheme(
                minWidth: 350.0,
                height: 70,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: RaisedButton(
                  color: Color.fromRGBO(30, 50, 56, 1),
                  disabledTextColor: Colors.black,
                  textColor: Colors.white,
                  child: Text(
                    "Friday",
                    style: TextStyle(fontSize: 20),
                  ),
                  key: Key('add-a-plan-button'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FridayPlan(widget.text)));
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ButtonTheme(
                minWidth: 350.0,
                height: 70,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: RaisedButton(
                  color: Color.fromRGBO(30, 50, 56, 1),
                  disabledTextColor: Colors.black,
                  textColor: Colors.white,
                  child: Text(
                    "Saturday",
                    style: TextStyle(fontSize: 20),
                  ),
                  key: Key('add-a-plan-button'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SaturdayPlan(widget.text)));
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ButtonTheme(
                minWidth: 350.0,
                height: 70,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: RaisedButton(
                  color: Color.fromRGBO(30, 50, 56, 1),
                  disabledTextColor: Colors.black,
                  textColor: Colors.white,
                  child: Text(
                    "Sunday",
                    style: TextStyle(fontSize: 20),
                  ),
                  key: Key('add-a-plan-button'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SundayPlan(widget.text)));
                  },
                ),
              ),
            ])));
  }
}
