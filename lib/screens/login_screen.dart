import 'package:flutter/material.dart';
import 'package:workoutapp/screens/sign_in_screen.dart';
import 'package:workoutapp/screens/sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(84, 110, 122, 1),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(""),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Container(
                  padding: EdgeInsets.only(bottom: 50),
                  child: Icon(Icons.account_circle,
                      color: Color.fromRGBO(255, 255, 255, 1), size: 200)),
              RaisedButton(
                key: Key("sign-in-button"),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0)),
                color: Color.fromRGBO(30, 50, 56, 1),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(60, 20, 60, 20),
                  child: Text(
                    "Sign In",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignIn()));
                },
              ),
              SizedBox(height: 20),
              RaisedButton(
                key: Key("sign-up-button"),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0)),
                color: Color.fromRGBO(129, 156, 169, 1),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(60, 20, 60, 20),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
              ),
            ])));
  }
}
