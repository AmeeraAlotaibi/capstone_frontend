import 'package:capstone_frontend/models/workout.dart';
import 'package:capstone_frontend/services/workout_service.dart';
import 'package:flutter/material.dart';

class WorkoutProvider extends ChangeNotifier {
  List<Workout> todayWorkouts = [];
  List<Workout> allWorkouts = [];
  // get all workouts
  Future<List<Workout>> getWorkouts() async {
    todayWorkouts = await WorkoutService().getTodayWorkouts();
    return todayWorkouts;
  }
  Future<List<Workout>> getAllWorkouts() async {
    allWorkouts = await WorkoutService().getAllWorkouts();
    return allWorkouts;
  }
  Future<void> doneWorkour(int exerciseId, bool done) async {
    await WorkoutService().doneWorkour( exerciseId,  done);
    notifyListeners();
  }
  
}
