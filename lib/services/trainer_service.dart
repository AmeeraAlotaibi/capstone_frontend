import 'package:capstone_frontend/models/trainer.dart';
import 'package:capstone_frontend/models/user.dart';
import 'package:capstone_frontend/services/client.dart';
import 'package:dio/dio.dart';

class TrainerService {
  List<Trainer> trainers = [];
 Future<List<Trainer>> getTrainers() async {
    try {
      Response res = await Client.dio.get(
        "trainer-list/",
      );
      trainers = (res.data as List)
          .map((trainer) => Trainer.fromJson(trainer))
          .toList();
      // print(trainers[0].image);
    } on DioError catch (error) {
      print(error);
    }
    return trainers;
  }

  // trainer details
  Future<Trainer> getTrainerDetail(int trainerId) async {
    try {
      Response res = await Client.dio.get(
        "trainer-detail/$trainerId",
      );
      return Trainer.fromJson(res.data);
      // print(trainers[0].image);
    } on DioError catch (error) {
      print(error);
      return Trainer(user: User(username: "demo"));
    }
    // return trainer;
  
  }

}
