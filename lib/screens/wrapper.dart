import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workoutapp/models/User.dart';
import 'package:workoutapp/screens/splash_screen_to_home.dart';
import 'package:workoutapp/screens/splash_screen_to_login.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    
    if (user == null){
      return SplashScreenLogin();
    }else{
      return SplashScreenHome();
    }
   
  }
}