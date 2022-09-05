import 'package:capstone_frontend/models/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'trainee.g.dart';

@JsonSerializable()
class Trainee {
  User? user;
  String? gender;
  int? age;
  int? height;
  int? weight;
  String? blood_type;
  String? image;
  Trainee(
      {this.user,
      this.gender,
      this.age,
      this.height,
      this.weight,
      this.blood_type,
      this.image});
  factory Trainee.fromJson(Map<String, dynamic> json) =>
      _$TraineeFromJson(json);
  Map<String, dynamic> toJson() => _$TraineeToJson(this);
}
