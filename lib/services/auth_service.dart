import 'package:capstone_frontend/models/user.dart';
import 'package:capstone_frontend/services/client.dart';
import 'package:dio/dio.dart';

class AuthService {
// REGISTER SERVICE ================================
  Future<String> register({required User user}) async {
    late String token = "";

    try {
      Response res = await Client.dio.post(
        "trainee-register/",
        data: user.toJson(),
      );
      token = res.data["access"];
      print("register==== $token");
    } on DioError catch (error) {
      print(error.message);
    }
    return token;
  }

// LOGIN SERVICE ===================================
  Future<String> login({required User user}) async {
    late String token = "";

    try {
      Response res = await Client.dio.post(
        "trainee-login/",
        data: user.toJson(),
      );
      // still in progress
      if (res.statusCode == 401) {
        throw "This username does not exist";
      }
      // still in progress
      token = res.data["access"];
      print("login==== $token");
    } on DioError catch (error) {
      print(error);
    }
    return token;
  }
}
