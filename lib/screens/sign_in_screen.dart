import 'package:flutter/material.dart';
import 'package:workoutapp/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  

  final AuthService _auth = AuthService();

  String username = '';
  String password = '';

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(84, 110, 122, 1),
        appBar: AppBar(
          title: Text("Sign In to Your Account"),
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
                  initialValue: username,
                  style: TextStyle(color: Colors.white),
                  
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    fillColor: Color.fromRGBO(41, 67, 78, 1),
                    filled: true,
                    hintText: "Username",
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(84, 110, 122, 1), fontSize: 20),
                  ),
                  onChanged: (val) {
                    setState(() => username = val);
                  },
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Username is required";
                    }

                    return null;
                  },
                  onSaved: (String value) {
                    username = value;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: TextFormField(
                  initialValue: password,
                  style: TextStyle(color: Colors.white),
                  
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    fillColor: Color.fromRGBO(41, 67, 78, 1),
                    filled: true,
                    hintText: "Password",
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(84, 110, 122, 1), fontSize: 20),
                  ),
                  onChanged: (val) {
                    setState(() => password = val);
                  },
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Password is required";
                    }

                    return null;
                  },
                  onSaved: (String value) {
                    password = value;
                  },
                ),
              ),
              RaisedButton(
                key: Key("sign-up-button-2"),
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
                onPressed: () async {
                  print(username);
                  print(password);
                },
              ),
            ])));
  }
}
