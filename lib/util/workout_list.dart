import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workoutapp/models/Workout.dart';
import 'package:workoutapp/services/auth.dart';
import 'package:workoutapp/util/workout_tile.dart';

class WorkoutList extends StatefulWidget {
  @override
  _WorkoutListState createState() => _WorkoutListState();
}

class _WorkoutListState extends State<WorkoutList> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    final workouts = Provider.of<List<Workout>>(context);

    return ListView.builder(
      itemCount: workouts.length,
      itemBuilder: (context, index) {
        return WorkoutTile(workout: workouts[index]);
      },
    );
  }
}
