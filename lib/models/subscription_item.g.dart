// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionItem _$SubscriptionItemFromJson(Map<String, dynamic> json) =>
    SubscriptionItem(
      plan: json['plan'] as int,
      trainee: User.fromJson(json['trainee'] as Map<String, dynamic>),
      start_date: json['start_date'] as String,
      end_date: json['end_date'] as String,
      active: json['active'] as bool,
      payment_status: json['payment_status'] as bool,
      auto_renew: json['auto_renew'] as bool,
    );

Map<String, dynamic> _$SubscriptionItemToJson(SubscriptionItem instance) =>
    <String, dynamic>{
      'plan': instance.plan,
      'trainee': instance.trainee,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'active': instance.active,
      'payment_status': instance.payment_status,
      'auto_renew': instance.auto_renew,
    };
