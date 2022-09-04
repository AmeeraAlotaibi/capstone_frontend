// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Workout _$WorkoutFromJson(Map<String, dynamic> json) => Workout(
      trainee: json['trainee'] as int?,
      exercise: json['exercise'] == null
          ? null
          : Exercise.fromJson(json['exercise'] as Map<String, dynamic>),
      reps: json['reps'] as int?,
      sets: json['sets'] as int?,
      time: json['time'] as String?,
      done: json['done'] as bool?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$WorkoutToJson(Workout instance) => <String, dynamic>{
      'trainee': instance.trainee,
      'exercise': instance.exercise,
      'reps': instance.reps,
      'sets': instance.sets,
      'time': instance.time,
      'done': instance.done,
      'date': instance.date,
    };
