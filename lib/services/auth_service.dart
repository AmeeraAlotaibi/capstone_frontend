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
      print("this is my id ====== ${user.id}");

    } on DioError catch (error) {
      if (error.response!.statusCode == 404) {
        throw Exception("User Not Found.");
      } else if (error.response!.statusCode == 400) {
          throw Exception("User Already Exists");
      } else {
        print(error.message);
        throw Exception("Unexpected Error Occured.");
      }
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
      token = res.data["access"];
      print("login==== $token");
      print("this is my id ====== ${user.id}");
    } on DioError catch (error) {
      if (error.response!.statusCode == 404) {
        throw Exception("User not found.");
      } else if (error.response!.statusCode == 400) {
        throw Exception("User Already Exists.");
      } else {
        print(error.message);
        throw Exception("Unexpected Error Occured.");
      }
    }
    return token;
  }
}
