class User {
  final String uid;

  User({this.uid});
}

class UserData{
  final String uid;
  final String workoutName;
  final String workoutType;
  final int time;
  final int weight;

  UserData({this.uid, this.workoutName, this.workoutType, this.time, this.weight});
}

class UserBody{
  final int age;
  final int bodyweight;
  final int height;

  UserBody({this.age, this.bodyweight, this.height});
}
