import 'package:capstone_frontend/models/subscription.dart';
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
  Subscription? subscription;

  Trainer({
    required this.user,
     this.age,
     this.experience,
     this.specialty,
     this.image,
     this.subscription
  });

  factory Trainer.fromJson(Map<String, dynamic> json) =>
      _$TrainerFromJson(json);
  Map<String, dynamic> toJson() => _$TrainerToJson(this);
}
