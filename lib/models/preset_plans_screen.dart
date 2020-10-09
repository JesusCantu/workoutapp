import 'package:flutter/material.dart';
import 'package:workoutapp/models/view_pre_stretch_plan_screen.dart';
import 'package:workoutapp/models/view_pre_aerobics_plan_screen.dart';
import 'package:workoutapp/models/view_pre_weightlifting_screen.dart';

class PresetPlans extends StatefulWidget {
  @override
  _PresetPlans createState() => _PresetPlans();
}

class _PresetPlans extends State<PresetPlans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(84, 110, 122, 1),
        appBar: AppBar(
          title: Text("Preset Plans"),
          key: Key("preset-plan-text"),
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
                height: 100,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: RaisedButton(
                  color: Color.fromRGBO(30, 50, 56, 1),
                  disabledTextColor: Colors.black,
                  textColor: Colors.white,
                  child: Text(
                    "Stretches",
                    style: TextStyle(fontSize: 20),
                  ),
                  key: Key('preset-stretches-button'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => YourPreStretchingPlans()));
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ButtonTheme(
                minWidth: 350.0,
                height: 100,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: RaisedButton(
                  color: Color.fromRGBO(30, 50, 56, 1),
                  disabledTextColor: Colors.black,
                  textColor: Colors.white,
                  child: Text(
                    "Aerobics",
                    style: TextStyle(fontSize: 20),
                  ),
                  key: Key('preset-aerobics-button'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => YourPreAerobicsPlans()));
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ButtonTheme(
                minWidth: 350.0,
                height: 100,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: RaisedButton(
                  color: Color.fromRGBO(30, 50, 56, 1),
                  disabledTextColor: Colors.black,
                  textColor: Colors.white,
                  child: Text(
                    "Weight-lifting",
                    style: TextStyle(fontSize: 20),
                  ),
                  key: Key('preset-weightlifting-button'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => YourPreWeightLiftingPlans()));
                  },
                ),
              ),
            ])));
  }
}
