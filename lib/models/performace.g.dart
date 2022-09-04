// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'performace.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Performace _$PerformaceFromJson(Map<String, dynamic> json) => Performace(
      date: json['date'] as String?,
      done: json['done'] as int?,
      all: json['all'] as int?,
      total_calories: json['total_calories'] as double?,
      active_calories: json['active_calories'] as double?,
    );

Map<String, dynamic> _$PerformaceToJson(Performace instance) =>
    <String, dynamic>{
      'date': instance.date,
      'done': instance.done,
      'all': instance.all,
      'total_calories': instance.total_calories,
      'active_calories': instance.active_calories,
    };
