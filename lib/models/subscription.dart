// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'subscription.g.dart';

@JsonSerializable()
class Subscription {
  int? id;
  String? name;
  int? price;
  String? description;
  int? trainer;
  int? duration;
  String? trainer_name;

  Subscription({
    this.id,
    this.name,
    this.price,
    this.description,
    this.trainer,
    this.duration,
    this.trainer_name,
  });

  factory Subscription.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFromJson(json);
  Map<String, dynamic> toJson() => _$SubscriptionToJson(this);
}
