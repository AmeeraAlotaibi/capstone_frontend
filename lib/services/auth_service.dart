import 'package:capstone_frontend/services/client.dart';
import 'package:dio/dio.dart';

// class AuthService {
//   // REGISTER SERVICE ================================
//   Future<String> register({required User user}) async {
//     late String token = "";

//     try {
//       Response res = await Client.dio.post(
//         "register/", // ************* CHANGE THIS LATER ACCORDING TO THE BACKEND
//         data: user.toJson(),
//       );
//       token = res.data["access"];
//     } on DioError catch (error) {
//       print(error.message);
//     }
//     return token;
//   }

// // SIGN IN SERVICE ================================
//   Future<String> login({required User user}) async {
//     late String token = "";

//     try {
//       Response res = await Client.dio.post(
//         "login/", // ************* CHANGE THIS LATER ACCORDING TO THE BACKEND
//         data: user.toJson(),
//       );
//       token = res.data["access"];
//     } on DioError catch (error) {
//       print(error);
//     }
//     return token;
//   }
// }
