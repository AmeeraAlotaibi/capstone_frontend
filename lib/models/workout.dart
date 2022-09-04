// ignore_for_file: non_constant_identifier_names

import 'package:capstone_frontend/models/exercise.dart';
import 'package:json_annotation/json_annotation.dart';

part 'workout.g.dart';

@JsonSerializable()
class Workout {
  int? trainee;
  Exercise? exercise;
  int? reps;
  int? sets;
  String? time;
  bool? done;
  String? date;


  Workout({
     this.trainee,
     this.exercise,
     this.reps,
     this.sets,
     this.time,
     this.done,
     this.date,
  });

  factory Workout.fromJson(Map<String, dynamic> json) =>
      _$WorkoutFromJson(json);
  Map<String, dynamic> toJson() => _$WorkoutToJson(this);
}
