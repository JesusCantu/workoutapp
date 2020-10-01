import 'package:flutter/material.dart';
import 'package:workoutapp/services/auth.dart';


class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(84, 110, 122, 1),
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Color.fromRGBO(30, 50, 56, 1),
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text('logout'),
            onPressed: () async{
              await _auth.signOut();
            },
          )
        ],
      )
    );
  }
}