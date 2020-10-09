import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:workoutapp/screens/add_plan_screen.dart';
import 'package:workoutapp/screens/login_screen.dart';
import 'package:workoutapp/screens/view_aerobics_plan_screen.dart';
import 'package:workoutapp/screens/view_stretch_plan_screen.dart';
import 'package:workoutapp/screens/view_weightlifting_plan_screen.dart';
import 'package:workoutapp/services/auth.dart';
import 'package:workoutapp/services/database.dart';
import 'package:provider/provider.dart';
import 'package:workoutapp/models/Workout.dart';
import 'package:workoutapp/util/workout_tile.dart';
import 'package:workoutapp/util/workout_list.dart';



class YourPlans extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context){
    return StreamProvider<List<Workout>>.value( 
      value: DatabaseService().workouts,
      child: Scaffold(
        backgroundColor: Color.fromRGBO(84, 110, 122, 1),
        appBar: AppBar(
          title: Text('Your Plans'),
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
            children: <Widget>[
           // WorkoutList(),
           SizedBox(height: 20),
            ButtonTheme(
                minWidth: 350.0,
                height: 100,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: RaisedButton(
                  color: Color.fromRGBO(30, 50, 56, 1),
                  disabledTextColor: Colors.black,
                  textColor: Colors.white,
                  child: Text(
                    "Stretches",
                    style: TextStyle(fontSize: 20),
                  ),
                  key: Key('stretches-button'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => YourStretchPlans()));
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ButtonTheme(
                minWidth: 350.0,
                height: 100,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: RaisedButton(
                  color: Color.fromRGBO(30, 50, 56, 1),
                  disabledTextColor: Colors.black,
                  textColor: Colors.white,
                  child: Text(
                    "Aerobics",
                    style: TextStyle(fontSize: 20),
                  ),
                  key: Key('aerobics-button'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => YourAerobicsPlans()));
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ButtonTheme(
                minWidth: 350.0,
                height: 100,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: RaisedButton(
                  color: Color.fromRGBO(30, 50, 56, 1),
                  disabledTextColor: Colors.black,
                  textColor: Colors.white,
                  child: Text(
                    "Weight-lifting",
                    style: TextStyle(fontSize: 20),
                  ),
                  key: Key('weightlifting-button'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => YourWeightLiftingPlans()));
                  },
                ),
              ),
            Spacer(),
            Ink(
              decoration: BoxDecoration(
                color: Color.fromRGBO(30, 50, 56, 1),
                shape: BoxShape.circle,
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(1000.0),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddPlan()));
                },
                child: Padding( 
                  padding: EdgeInsets.all(20.0),
                  child: Icon( 
                    Icons.add,
                    size: 30.0,
                    color: Colors.white
                  )
                )
              )
            ),
            
              SizedBox(height: 80,),
            ]
          )
          
          
          
        ),
        
        ),
      );
    
  }
}
