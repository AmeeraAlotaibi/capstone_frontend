import 'package:capstone_frontend/models/workout.dart';
import 'package:capstone_frontend/services/client.dart';
import 'package:dio/dio.dart';

class WorkoutService {
  List<Workout> todayWorkouts = [];
  List<Workout> allWorkouts = [];
 Future<List<Workout>> getTodayWorkouts() async {
    try {
      Response res = await Client.dio.get(
        "my-exercises/today",
      );
      todayWorkouts = (res.data as List)
          .map((workout) => Workout.fromJson(workout))
          .toList();
      // print(todayWorkouts[0].image);
    } on DioError catch (error) {
      print(error);
    }
    return todayWorkouts;
  }
 Future<List<Workout>> getAllWorkouts() async {
    try {
      Response res = await Client.dio.get(
        "my-exercises/monthly",
      );
      allWorkouts = (res.data as List)
          .map((workout) => Workout.fromJson(workout))
          .toList();
      // print(allWorkouts[0].image);
    } on DioError catch (error) {
      print(error);
    }
    return allWorkouts;
  }
 Future<void> doneWorkour(int exerciseId,bool done) async {
   var data ={
     "done":done
   };
    try {
      await Client.dio.patch(
        "exercise/$exerciseId",data:data
      );
      // print(todayWorkouts[0].image);
    } on DioError catch (error) {
      print(error);
    }
  }
  
}
