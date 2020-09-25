import 'package:flutter/material.dart';
import 'package:workoutapp/services/auth.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final AuthService _auth = AuthService();

  String _firstName;
  String _lastName;
  String email = '';
  String password = '';
  String error = '';

  final _formKey = GlobalKey<FormState>();

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(84, 110, 122, 1),
        appBar: AppBar(
          title: Text("Create an Account"),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(30, 50, 56, 1),
          elevation: 0,
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                key: _formKey,
                children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: TextFormField(
                  initialValue: _firstName,
                  style: TextStyle(color: Colors.white),
                  
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    fillColor: Color.fromRGBO(41, 67, 78, 1),
                    filled: true,
                    hintText: "First Name",
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(84, 110, 122, 1), fontSize: 20),
                  ),
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "First Name is required";
                    }

                    return null;
                  },
                  onSaved: (String value) {
                    _firstName = value;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: TextFormField(
                  initialValue: _lastName,
                  style: TextStyle(color: Colors.white),
                  
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    fillColor: Color.fromRGBO(41, 67, 78, 1),
                    filled: true,
                    hintText: "Last Name",
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(84, 110, 122, 1), fontSize: 20),
                  ),
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Last Name is required";
                    }

                    return null;
                  },
                  onSaved: (String value) {
                    _lastName = value;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: TextFormField(
                  initialValue: email,
                  style: TextStyle(color: Colors.white),
                  
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    fillColor: Color.fromRGBO(41, 67, 78, 1),
                    filled: true,
                    hintText: "Email",
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(84, 110, 122, 1), fontSize: 20),
                  ),
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Email is required";
                    }

                    return null;
                  },
                  onSaved: (String value) {
                    email = value;
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
                    "Sign Up",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
                onPressed: () async{
                  if (_formKey.currentState.validate()){
                    dynamic result = await _auth.SignUp(email, password);
                    if(result == null){
                      setState(() => error = 'please supply a valid email');
                    }
                  }

                  _formKey.currentState.save();

               
                  
                  
                 
                },
              ),
              SizedBox(height: 12.0),
              Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 15.0),
              ),
            ])));
  }
}
