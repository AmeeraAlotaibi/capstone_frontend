// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Trainee _$TraineeFromJson(Map<String, dynamic> json) => Trainee(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      gender: json['gender'] as String?,
      age: json['age'] as int?,
      height: json['height'] as int?,
      weight: json['weight'] as int?,
      blood_type: json['blood_type'] as String?,
      image: json['image'] as String?,
      bio: json['bio'] as String?,
    );

Map<String, dynamic> _$TraineeToJson(Trainee instance) => <String, dynamic>{
      'user': instance.user,
      'gender': instance.gender,
      'age': instance.age,
      'height': instance.height,
      'weight': instance.weight,
      'blood_type': instance.blood_type,
      'image': instance.image,
      'bio': instance.bio,
    };
