import 'package:flutter/material.dart';
import 'package:workoutapp/screens/homescreen.dart';
import 'package:workoutapp/services/auth.dart';
import 'package:workoutapp/util/loading.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(
        backgroundColor: Color.fromRGBO(84, 110, 122, 1),
        appBar: AppBar(
          title: Text("Sign In to Your Account"),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(30, 50, 56, 1),
          elevation: 0,
        ),
        body: Container(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
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
                  validator: (val) => val.isEmpty ? 'Enter an email' : null,
                  onChanged: (val) {
                    setState(() => email = val);
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
                  validator: (val) => val.isEmpty ? 'Enter a password' : null,
                  onChanged: (val) {
                    setState(() => password = val);
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
                  if (_formKey.currentState.validate()){
                    setState(() => loading = true);
                    dynamic result = await _auth.signIn(email, password);
                    if(result == null){
                      setState(() {
                        error = 'Could not sign in';
                        loading = false;
                        });
                    }else{
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Home()));
                    }
                  }
                },
              ),
              SizedBox(height: 12.0),
              Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 15.0),
              ),
            ])
            )));
  }
}
