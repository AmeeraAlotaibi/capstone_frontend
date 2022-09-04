// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'performace.g.dart';

@JsonSerializable()
class Performace {
  String? date;
  int? done;
  int? all;
  double? total_calories;
  double? active_calories;


  Performace({
     this.date,
     this.done,
     this.all,
     this.total_calories,
     this.active_calories,
   
  });

  factory Performace.fromJson(Map<String, dynamic> json) =>
      _$PerformaceFromJson(json);
  Map<String, dynamic> toJson() => _$PerformaceToJson(this);
}
