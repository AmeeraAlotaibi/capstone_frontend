import 'package:json_annotation/json_annotation.dart';
import 'package:capstone_frontend/models/user.dart';

part 'subscription_item.g.dart';

@JsonSerializable()
class SubscriptionItem {
  int plan;
  User trainee;
  String start_date;
  String end_date;
  bool active;
  bool payment_status;
  bool auto_renew;

  SubscriptionItem({
    required this.plan,
    required this.trainee,
    required this.start_date,
    required this.end_date,
    required this.active,
    required this.payment_status,
    required this.auto_renew,
  });

  factory SubscriptionItem.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionItemFromJson(json);
  Map<String, dynamic> toJson() => _$SubscriptionItemToJson(this);
}
