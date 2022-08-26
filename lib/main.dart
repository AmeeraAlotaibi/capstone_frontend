import 'package:capstone_frontend/pages/auth_page.dart';
import 'package:capstone_frontend/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      home: HomePage(),
    );
  }
}
