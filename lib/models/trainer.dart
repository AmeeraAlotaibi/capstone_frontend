import 'package:json_annotation/json_annotation.dart';
import 'package:capstone_frontend/models/user.dart';

part 'trainer.g.dart';

@JsonSerializable()
class Trainer {
  User user;
  int? age;
  int? experience;
  String? specialty;
  String? image;

  Trainer({
    required this.user,
     this.age,
     this.experience,
     this.specialty,
     this.image,
  });

  factory Trainer.fromJson(Map<String, dynamic> json) =>
      _$TrainerFromJson(json);
  Map<String, dynamic> toJson() => _$TrainerToJson(this);
}
