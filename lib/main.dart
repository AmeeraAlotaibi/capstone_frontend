import 'package:capstone_frontend/pages/auth_page.dart';
import 'package:capstone_frontend/pages/edit_profile_page.dart';
import 'package:capstone_frontend/pages/home_page.dart';
import 'package:capstone_frontend/pages/trainer_profile.dart';
import 'package:capstone_frontend/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'app_theme.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(
          create: (_) => AuthProvider(),
        ),
      ],
      child: MyApp(),
    ),
  );
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
    initialLocation: "/auth",
    routes: [
      GoRoute(
        path: "/auth",
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
      GoRoute(
        path: "/trainer-profile",
        builder: (context, state) => TrainerProfile(),
      ),
    ],
  );
}
