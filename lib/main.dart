import 'package:capstone_frontend/pages/auth_page.dart';
import 'package:capstone_frontend/pages/edit_profile_page.dart';
import 'package:capstone_frontend/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      // GO ROUTER
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      routeInformationProvider: _router.routeInformationProvider,
    );
  }

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => AuthPage(),
      ),
      GoRoute(
        path: "/home",
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: "/edit-profile",
        builder: (context, state) => EditProfilePage(),
      ),
    ],
  );
}
