// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'plan.g.dart';

@JsonSerializable()
class Plan {
  int? id;
  int plan;
  int? trainee;
  String start_date;
  String end_date;
  bool active;
  bool payment_status;
  bool auto_renew;
  String? price;
  String? trainer;

  Plan({
    this.id,
    required this.plan,
    this.trainee,
    this.price,
    this.trainer,
    required this.start_date,
    required this.end_date,
    required this.active,
    required this.payment_status,
    required this.auto_renew,
  });

  factory Plan.fromJson(Map<String, dynamic> json) =>
      _$PlanFromJson(json);
  Map<String, dynamic> toJson() => _$PlanToJson(this);
}
