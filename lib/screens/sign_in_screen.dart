import 'package:flutter/material.dart';
import 'package:workoutapp/screens/homescreen.dart';
import 'package:workoutapp/screens/login_screen.dart';
import 'package:sqflite/sqflite.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController u = TextEditingController(); // username
  TextEditingController p = TextEditingController(); // password

  String _username;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(84, 110, 122, 1),
        appBar: AppBar(
          title: Text("Sign In"),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(30, 50, 56, 1),
          elevation: 0,
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: TextFormField(
                  key: Key("username-text"),
                  initialValue: _username,
                  style: TextStyle(color: Colors.white),
                  controller: u,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    fillColor: Color.fromRGBO(41, 67, 78, 1),
                    filled: true,
                    hintText: "Username",
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(84, 110, 122, 1), fontSize: 20),
                  ),
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Username is required";
                    }

                    return null;
                  },
                  onSaved: (String value) {
                    _username = value;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: TextFormField(
                  key: Key("password-text"),
                  initialValue: _password,
                  style: TextStyle(color: Colors.white),
                  controller: p,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    fillColor: Color.fromRGBO(41, 67, 78, 1),
                    filled: true,
                    hintText: "Password",
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(84, 110, 122, 1), fontSize: 20),
                  ),
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Password is required";
                    }

                    return null;
                  },
                  onSaved: (String value) {
                    _password = value;
                  },
                ),
              ),
              RaisedButton(
                key: Key("sign-in-button-2"),
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
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
            ])));
  }
}
