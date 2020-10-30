import 'package:flutter/material.dart';
import 'package:workoutapp/screens/your_plans_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(84, 110, 122, 1),
        appBar: AppBar(
          title: Text("Home"),
          key: Key("home-text"),
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
                    "Body Info",
                    style: TextStyle(fontSize: 20),
                  ),
                  key: Key('body-info-button'),
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
                    "Workout Plan",
                    style: TextStyle(fontSize: 20),
                  ),
                  key: Key('workout-plan-button'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => YourPlans()));
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
                    "Statistics",
                    style: TextStyle(fontSize: 20),
                  ),
                  key: Key('statistics-button'),
                  onPressed: () {},
                ),
              ),
            ])));
  }
}
