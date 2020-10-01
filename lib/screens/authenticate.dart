import 'package:workoutapp/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:workoutapp/screens/sign_up_screen.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = true;
  void toggleView(){
    setState(() => showSignIn = !showSignIn);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SignUp(),
    );
  }
}