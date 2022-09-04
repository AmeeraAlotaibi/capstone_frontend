// ignore_for_file: non_constant_identifier_names

import 'package:capstone_frontend/models/trainer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'exercise.g.dart';

@JsonSerializable()
class Exercise {
  int? id;
  String? name;
  String? short_description;
  String? image;
  String? video;
  String? category_name;
  Trainer? trainer;

  Exercise({
     this.id,
     this.name,
     this.short_description,
     this.image,
     this.video,
     this.category_name,
     this.trainer,
  });

  factory Exercise.fromJson(Map<String, dynamic> json) =>
      _$ExerciseFromJson(json);
  Map<String, dynamic> toJson() => _$ExerciseToJson(this);
}
