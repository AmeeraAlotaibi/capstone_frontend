class User {
  int? id;
  String? first_name;
  String? last_name;
  String username;
  String? password;

  User({
    this.first_name,
    this.last_name,
    required this.username,
    this.password,
  });
}
