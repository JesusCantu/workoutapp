class User {
  int id;
  String firstName;
  String lastName;
  String username;
  String password;

  User({this.id, this.firstName, this.lastName, this.username, this.password});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as int,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
    );
  }
}
