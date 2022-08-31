import 'package:json_annotation/json_annotation.dart';
import 'package:capstone_frontend/models/user.dart';

part 'trainer.g.dart';

@JsonSerializable()
class Trainer {
  User user;
  int age;
  int experience;
  String specialty;

  Trainer({
    required this.user,
    required this.age,
    required this.experience,
    required this.specialty,
  });

  factory Trainer.fromJson(Map<String, dynamic> json) =>
      _$TrainerFromJson(json);
  Map<String, dynamic> toJson() => _$TrainerToJson(this);
}
