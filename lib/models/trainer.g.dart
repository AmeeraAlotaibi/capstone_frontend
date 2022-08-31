// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Trainer _$TrainerFromJson(Map<String, dynamic> json) => Trainer(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      age: json['age'] as int,
      experience: json['experience'] as int,
      specialty: json['specialty'] as String,
    );

Map<String, dynamic> _$TrainerToJson(Trainer instance) => <String, dynamic>{
      'user': instance.user,
      'age': instance.age,
      'experience': instance.experience,
      'specialty': instance.specialty,
    };
