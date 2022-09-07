import 'package:capstone_frontend/models/trainer.dart';
import 'package:capstone_frontend/services/trainer_service.dart';
import 'package:flutter/material.dart';

class TrainerProvider extends ChangeNotifier {
  List<Trainer> trainers = [];
  List<Trainer> searchList = [];
  late Trainer trainerDetail;
  // get all trainers
  Future<List<Trainer>> getTrainers() async {
    trainers = await TrainerService().getTrainers();
    return trainers;
  }
  Future<List<Trainer>> search(String query) async {
    searchList = await TrainerService().search(query);
    return searchList;
  }
  // get trainer details
  Future <Trainer> getTrainerProfile(int trainerId) async {
    trainerDetail = await TrainerService().getTrainerDetail(trainerId);
    return trainerDetail;
  }
}
