import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workoutapp/screens/create_plan_screen.dart';
import 'package:workoutapp/screens/login_screen.dart';
import 'package:workoutapp/services/auth.dart';

class AddPlan extends StatefulWidget{
  @override 
  _AddPlanState createState() => _AddPlanState();
}

class _AddPlanState extends State<AddPlan>{
  final AuthService _auth = AuthService();
  @override 
  Widget build(BuildContext context){
    return Scaffold(
          backgroundColor: Color.fromRGBO(84, 110, 122, 1),
          appBar: AppBar(
            title: Text('Add a Plan'),
            backgroundColor: Color.fromRGBO(30, 50, 56, 1),
            actions: <Widget>[
              FlatButton.icon(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                label: Text(
                  'logout',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () async {
                  await _auth.signOut();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
              )
            ],
          ),
        body: Center(
        child: Column(
          children: [
            // Large Raised Button Container
            Container(
              height: 160,
              // Button Size Padding
              padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: RaisedButton(
                // Button Content Padding
                padding: EdgeInsets.all(20),
                key: Key("pre-set-plans-button"),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0)),
                color: Color.fromRGBO(30, 50, 56, 1),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Pre-Set Plans",
                        style: TextStyle(color: Colors.white, fontSize: 28),
                      ),  
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Choose from a list of pre-set plans.",
                        style: GoogleFonts.montserrat(color: Colors.white, fontSize: 14),
                      )
                    )
                  ]
                ),
                onPressed: () async{
                      
                      





                }
              ),           
            ),            
            // Large Raised Button Container
            Container(
              height: 160,
              // Button Size Padding
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: RaisedButton(
                // Button Content Padding
                padding: EdgeInsets.all(20),
                key: Key("plans-button"),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0)),
                color: Color.fromRGBO(30, 50, 56, 1),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Custom Plans",
                        style: TextStyle(color: Colors.white, fontSize: 28),
                      ),  
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Choose from a list of custom plans.",
                        style: GoogleFonts.montserrat(color: Colors.white, fontSize: 14),
                      )
                    )
                  ]
                ),
                onPressed: () async{
                      





                }
              ),           
            ),     
            // Large Raised Button Container
            Container(
              height: 160,
              // Button Size Padding
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: RaisedButton(
                // Button Content Padding
                padding: EdgeInsets.all(20),
                key: Key("stats-button"),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0)),
                color: Color.fromRGBO(30, 50, 56, 1),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Create New Plan",
                        style: TextStyle(color: Colors.white, fontSize: 28),
                      ),  
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Create a new workout plan.",
                        style: GoogleFonts.montserrat(color: Colors.white, fontSize: 14),
                      )
                    )
                  ]
                ),
                onPressed: () async{
                     
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CreatePlan()));


                }
              ),           
            ),
          ]
        )
      )
          
          );
  }
}