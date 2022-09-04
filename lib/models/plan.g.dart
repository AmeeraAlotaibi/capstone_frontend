// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Plan _$PlanFromJson(Map<String, dynamic> json) => Plan(
      id: json['id'] as int?,
      plan: json['plan'] as int,
      trainee: json['trainee'] as int?,
      price: json['price'] as String?,
      trainer: json['trainer'] as String?,
      start_date: json['start_date'] as String,
      end_date: json['end_date'] as String,
      active: json['active'] as bool,
      payment_status: json['payment_status'] as bool,
      auto_renew: json['auto_renew'] as bool,
    );

Map<String, dynamic> _$PlanToJson(Plan instance) => <String, dynamic>{
      'id': instance.id,
      'plan': instance.plan,
      'trainee': instance.trainee,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'active': instance.active,
      'payment_status': instance.payment_status,
      'auto_renew': instance.auto_renew,
      'price': instance.price,
      'trainer': instance.trainer,
    };
