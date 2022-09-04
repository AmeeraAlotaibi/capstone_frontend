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
        "image": await MultipartFile.fromFile(trainee.image!),
      });
      Response res =
          await Client.dio.post("trainee/${trainee.user!.id}", data: data);
      updatedTrainee = Trainee.fromJson(res.data);
    } on DioError catch (error) {
      print(error);
    }
    return updatedTrainee;
  }
}
