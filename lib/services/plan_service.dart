import 'package:capstone_frontend/models/plan.dart';
import 'package:capstone_frontend/models/user.dart';
import 'package:capstone_frontend/services/client.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';


class PlanService {
  List<Plan> plans = [];
 Future<List<Plan>> getPlans() async {
    try {
      Response res = await Client.dio.get(
        "my-plans/",
      );
      plans = (res.data as List)
          .map((plan) => Plan.fromJson(plan))
          .toList();
      // print(plans[0].image);
    } on DioError catch (error) {
      print(error);
    }
    return plans;
  }
  // subscribe
  void subscribe(Plan plan) async {
    try {
      await Client.dio.post(
        "subscribe",data: plan.toJson()
      );
      // print(plans[0].image);
    } on DioError catch (error) {
      print(error);
    }
    // return plan;
  
  }
  void renew(int planId,int duration) async {
    var startDate = DateTime.now();
    var endDate =  DateTime(startDate.year, startDate.month , startDate.day + duration);

    var data={
      "start_date":DateFormat('yyyy-MM-dd').format(startDate),
      "end_date":DateFormat('yyyy-MM-dd').format(endDate)
    };

    try {
      await Client.dio.patch(
        "update/plan/$planId",data: data
      );
      // print(plans[0].image);
    } on DioError catch (error) {
      print(error);
    }
    // return plan;
  
  }
}
