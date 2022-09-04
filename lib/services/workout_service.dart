import 'package:capstone_frontend/models/workout.dart';
import 'package:capstone_frontend/services/client.dart';
import 'package:dio/dio.dart';

class WorkoutService {
  List<Workout> todayWorkouts = [];
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
  
}
