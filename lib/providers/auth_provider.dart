import 'dart:io';
import 'package:capstone_frontend/models/user.dart';
import 'package:capstone_frontend/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../services/client.dart';

class AuthProvider extends ChangeNotifier {
  late String token;
  late User user;

  // register
  Future<void> register({required User user}) async {
    token = await AuthService().register(user: user);
    await setToken(token);
    notifyListeners();
  }

  // sign in
  Future<void> login({required User user}) async {
    token = await AuthService().login(user: user);
    await setToken(token);
    notifyListeners();
  }

  // logout
  void logout() {
    token = "";
    notifyListeners();
  }

  Future<void> setToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("token", token);
    Client.dio.options.headers = {
      HttpHeaders.authorizationHeader: 'Bearer $token',
    };
    notifyListeners();
  }
}
