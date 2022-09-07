
// ignore_for_file: unnecessary_null_comparison

import 'package:capstone_frontend/models/plan.dart';
import 'package:capstone_frontend/services/plan_service.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:intl/intl.dart';


class PlanProvider extends ChangeNotifier {
  List<Plan> plans = [];
  // late Plan trainerDetail;
  // get all plans
  Future<List<Plan>> getPlans() async {
    plans = await PlanService().getPlans();
    return plans;
  }
  // subscribe
  void subscribe(int planId,int duration) async {
    var now = DateTime.now();
    var startDate = DateTime(now.year, now.month , now.day + 2);
    var endDate = DateTime(startDate.year, startDate.month , startDate.day + duration);
    Plan plan=Plan(active: true,plan: planId,payment_status: true,auto_renew: true,start_date:DateFormat('yyyy-MM-dd').format(startDate) ,end_date: DateFormat('yyyy-MM-dd').format(endDate));
    PlanService().subscribe(plan);
  }
  void renew(int planId,int duration) async {
    var foundPlan = plans.firstWhereOrNull((element) => planId == element.plan);

    PlanService().renew(foundPlan!.id!, duration);
  }
  Future<void> cancel(int planId) async {

    await PlanService().cancel(planId);
    notifyListeners();
  }

  // find Plan
  bool getPlanByID(int planId)  {
  var foundPlan = plans.firstWhereOrNull((element) => planId == element.plan);

   if(foundPlan != null){
     return true;

   }else{
     return false;
   }
  }
}
