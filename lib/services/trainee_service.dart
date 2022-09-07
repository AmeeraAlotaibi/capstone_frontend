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

  Future<void> editProfile({required Trainee trainee}) async {

    try {
      if(trainee.image=="")
      {FormData data = FormData.fromMap({
        "gender": trainee.gender,
        "age": trainee.age,
        "height": trainee.height,
        "weight": trainee.weight,
        "blood_type": trainee.blood_type,
        "first_name":trainee.user!.first_name,
        "last_name":trainee.user!.last_name,
        "bio": trainee.bio,
      });
           await Client.dio.patch("my-profile/", data: data);

      }
      else
      {FormData data = FormData.fromMap({
        "gender": trainee.gender,
        "age": trainee.age,
        "height": trainee.height,
        "weight": trainee.weight,
        "blood_type": trainee.blood_type,
        "first_name":trainee.user!.first_name,
        "last_name":trainee.user!.last_name,
        "bio": trainee.bio,
       "image": await MultipartFile.fromFile(trainee.image!),
      
      });
           await Client.dio.patch("my-profile/", data: data);

      }
    } on DioError catch (error) {
      print(error);
    }
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
