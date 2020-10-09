import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:workoutapp/models/Workout.dart';
import 'package:workoutapp/models/User.dart';

 class DatabaseService{
   final String uid;
  DatabaseService({this.uid});

   final CollectionReference workoutCollection = Firestore.instance.collection('workouts');

   Future updateUserData(String workoutName, String workoutType, int time, int weight) async{
     return await workoutCollection.document(uid).setData({
       'workoutName': workoutName,
       'workoutType': workoutType,
       'time': time,
       'weight': weight
     });
   }

   // userData from snapshot
   UserData _userDataFromSnapshot(DocumentSnapshot snapshot){
     return UserData(
       uid: uid,
       workoutName: snapshot.data['workoutName'],
       workoutType: snapshot.data['workoutName'],
       time: snapshot.data['workoutName'],
       weight: snapshot.data['weight'],
     );
   }

   getWorkoutsData()async{
     return await Firestore.instance.collection("WorkoutSets").snapshots();
   }

   getWorkoutData(String workoutId)async{
     return await Firestore.instance
     .collection("WorkoutSets")
     .document(workoutId)
     .collection("custom")
     .getDocuments();
   }

   Future<void> addWorkout(Map workoutData, String workoutId)async{
     await Firestore.instance.collection("workouts")
     .document(workoutId)
     .setData(workoutData)
     .catchError((e){
       print(e.toString());
     });
   }

   List<Workout> _workoutListFromSnapshot(QuerySnapshot snapshot){
     return snapshot.documents.map((doc){
       return Workout(
         workoutName: doc.data['workoutName'] ?? '',
         time: doc.data['time'] ?? 0,
       );
     }).toList();
   }

   Stream<List<Workout>> get workouts {
     return workoutCollection.snapshots().map(_workoutListFromSnapshot);
   }

   Stream<DocumentSnapshot> get userData{
     return workoutCollection.document(uid).snapshots();
   }
 }
