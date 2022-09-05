import 'package:capstone_frontend/models/performace.dart';
import 'package:capstone_frontend/models/trainee.dart';
import 'package:capstone_frontend/models/trainer.dart';
import 'package:capstone_frontend/models/user.dart';
import 'package:capstone_frontend/services/client.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class TraineeService {
  Future<Trainee> getProfile() async {
    late Trainee trainee;
    try {
      Response res = await Client.dio.get("my-profile/");
      trainee = Trainee.fromJson(res.data);
    } on DioError catch (error) {
      print(error);
    }
    return trainee;
  }

  Future<Trainee> editProfile({required Trainee trainee}) async {
    late Trainee updatedTrainee;
    try {
      FormData data = FormData.fromMap({
        "user": trainee.user,
        "gender": trainee.gender,
        "age": trainee.age,
        "height": trainee.height,
        "weight": trainee.weight,
        "blood_type": trainee.blood_type,
        // "image": await MultipartFile.fromFile(trainee.image!),
      });
      Response res = await Client.dio.patch("my-profile/", data: data);
      updatedTrainee = Trainee.fromJson(res.data);
    } on DioError catch (error) {
      print(error);
    }
    return updatedTrainee;
  }

  Future<List<Performace>> getPreformance() async {
    List<Performace> performcaces = [];
    try {
      Response res =
          await Client.dio.get("performace/monthly?year=2022&month=9");
      performcaces =
          (res.data as List).map((data) => Performace.fromJson(data)).toList();
    } on DioError catch (error) {
      print(error);
    }
    return performcaces;
  }
}
