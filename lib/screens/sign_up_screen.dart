import 'package:flutter/material.dart';
import 'package:workoutapp/screens/homescreen.dart';
import 'package:workoutapp/services/auth.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final AuthService _auth = AuthService();

  String firstName;
  String lastName;
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
        body: Container(
            child: ListView(
              children: [
                // Account Icon
                Container(
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.person_add,
                    color: Color.fromRGBO(255, 255, 255, 1),
                    size: 100
                  )
                ),
                // Input Fields
                Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                        child: TextFormField(
                          initialValue: firstName,
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
                            firstName = value;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                        child: TextFormField(
                          initialValue: lastName,
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
                            lastName = value;
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
                          validator: (val) => val.isEmpty ? 'Enter an email' : null,
                          onChanged: (val){
                            setState(() => email = val);
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
                          onChanged: (val){
                            setState(() => password = val);
                          },
                          
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        child: RaisedButton(
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
                              dynamic result = await _auth.signUp(email, password);
                              if(result == null){
                                setState(() => error = 'Please use a valid email');
                              }else{
                                Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Home()));
                              }
                            }

                            _formKey.currentState.save();

                        
                            
                            
                          
                          },
                        )
                      ),
                      
                      SizedBox(height: 12.0),
                      Text(
                        error,
                        style: TextStyle(color: Colors.red, fontSize: 15.0),
                      ),
                    ]
                  )
                ),
              ],
            )
        ));
  }
}
