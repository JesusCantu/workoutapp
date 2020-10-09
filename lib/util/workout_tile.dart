import 'package:flutter/material.dart';
import 'package:workoutapp/models/Workout.dart';
import 'package:workoutapp/services/auth.dart';

class WorkoutTile extends StatelessWidget{
  final AuthService _auth = AuthService();
  final Workout workout;
  //final String workoutName;
  //final int time;
  WorkoutTile({this.workout});

  @override 
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card( 
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: ListTile( 
          title: Text(workout.workoutName),
          subtitle: Text('Duration: ${workout.time} seconds'),
        )
      )
    );
  }
}