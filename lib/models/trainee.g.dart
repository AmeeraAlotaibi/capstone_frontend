// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Trainee _$TraineeFromJson(Map<String, dynamic> json) => Trainee(
      json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      json['gender'] as String?,
      json['age'] as int?,
      json['height'] as int?,
      json['weight'] as int?,
      json['blood_type'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$TraineeToJson(Trainee instance) => <String, dynamic>{
      'user': instance.user,
      'gender': instance.gender,
      'age': instance.age,
      'height': instance.height,
      'weight': instance.weight,
      'blood_type': instance.blood_type,
      'image': instance.image,
    };
