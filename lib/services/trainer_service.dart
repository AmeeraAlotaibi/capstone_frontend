import 'package:capstone_frontend/models/trainer.dart';
import 'package:capstone_frontend/models/user.dart';
import 'package:capstone_frontend/services/client.dart';
import 'package:dio/dio.dart';

class TrainerService {
  List<Trainer> trainers = [];
  List<Trainer> searchList = [];
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

 Future<List<Trainer>> search(String query) async {
    try {
      Response res = await Client.dio.get(
        "trainer-list/?search=$query",
      );
      searchList = (res.data as List)
          .map((trainer) => Trainer.fromJson(trainer))
          .toList();
      // print(searchList[0].image);
    } on DioError catch (error) {
      print(error);
    }
    return searchList;
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
  // trainer details
  Future<void> rate(int trainerId,double rating) async {
    try {
     await Client.dio.post(
        "rating/",data:{"trainer":trainerId,"rating":rating}
      );
      // print(trainers[0].image);
    } on DioError catch (error) {
      print(error);
    }
    // return trainer;
  
  }

}
