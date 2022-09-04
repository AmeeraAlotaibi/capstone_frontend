import 'package:capstone_frontend/models/workout.dart';
import 'package:capstone_frontend/services/workout_service.dart';
import 'package:flutter/material.dart';

class WorkoutProvider extends ChangeNotifier {
  List<Workout> todayWorkouts = [];
  // get all workouts
  Future<List<Workout>> getWorkouts() async {
    todayWorkouts = await WorkoutService().getTodayWorkouts();
    print(todayWorkouts);
    return todayWorkouts;
  }
  
}
