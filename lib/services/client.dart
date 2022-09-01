import 'package:dio/dio.dart';

class Client {
  static final Dio dio = Dio(
    BaseOptions(baseUrl: "http://10.0.2.2:8000/"),
  );
}

// class Client {
//   static final Dio dio = Dio(
//     BaseOptions(baseUrl: "http://127.0.1.1:8000/"),
//   );
// }
