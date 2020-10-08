import 'package:flutter/material.dart';
import 'package:workoutapp/models/add_plan_screen.dart';

class YourPlans extends StatefulWidget {
  @override
  _YourPlans createState() => _YourPlans();
}

class _YourPlans extends State<YourPlans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(84, 110, 122, 1),
        appBar: AppBar(
          title: Text("Your Plans"),
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
                  key: Key('stretches-button'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddPlan()));
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
                  key: Key('aerobics-button'),
                  onPressed: () {},
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
                  key: Key('weightlifting-button'),
                  onPressed: () {},
                ),
              ),
            ])));
  }
}
