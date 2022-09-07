// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) => Subscription(
      id: json['id'] as int?,
      name: json['name'] as String?,
      price: json['price'] as int?,
      description: json['description'] as String?,
      trainer: json['trainer'] as int?,
      duration: json['duration'] as int?,
      trainer_name: json['trainer_name'] as String?,
    );

Map<String, dynamic> _$SubscriptionToJson(Subscription instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'description': instance.description,
      'trainer': instance.trainer,
      'duration': instance.duration,
      'trainer_name': instance.trainer_name,
    };
