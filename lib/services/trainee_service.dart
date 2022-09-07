import 'package:capstone_frontend/models/performace.dart';
import 'package:capstone_frontend/models/trainee.dart';
import 'package:capstone_frontend/services/client.dart';
import 'package:dio/dio.dart';

class TraineeService {
  // get profile data
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

  // edit profile
  Future<Trainee> editProfile({required Trainee trainee}) async {
    Trainee updatedTrainee = Trainee();
    try {
      FormData data = FormData.fromMap({
        "user": trainee.user,
        "gender": trainee.gender,
        "age": trainee.age,
        "height": trainee.height,
        "weight": trainee.weight,
        "blood_type": trainee.blood_type,
        "bio": trainee.bio,
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

  // get stats
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
