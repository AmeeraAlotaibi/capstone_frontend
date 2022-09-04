// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Exercise _$ExerciseFromJson(Map<String, dynamic> json) => Exercise(
      id: json['id'] as int?,
      name: json['name'] as String?,
      short_description: json['short_description'] as String?,
      image: json['image'] as String?,
      video: json['video'] as String?,
      category_name: json['category_name'] as String?,
      trainer: json['trainer'] == null
          ? null
          : Trainer.fromJson(json['trainer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ExerciseToJson(Exercise instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'short_description': instance.short_description,
      'image': instance.image,
      'video': instance.video,
      'category_name': instance.category_name,
      'trainer': instance.trainer,
    };
