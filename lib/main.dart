import 'package:capstone_frontend/models/trainer.dart';
import 'package:capstone_frontend/pages/auth_page.dart';
import 'package:capstone_frontend/pages/edit_profile.dart';
import 'package:capstone_frontend/pages/exercises_list_page.dart';
import 'package:capstone_frontend/pages/home_page.dart';
import 'package:capstone_frontend/pages/trainer_profile.dart';
import 'package:capstone_frontend/pages/trainers_list_page.dart';
import 'package:capstone_frontend/providers/auth_provider.dart';
import 'package:capstone_frontend/providers/category_provider.dart';
import 'package:capstone_frontend/providers/plan_provider.dart';
import 'package:capstone_frontend/providers/theme_provider.dart';
import 'package:capstone_frontend/providers/trainee_provider.dart';
import 'package:capstone_frontend/providers/trainer_provider.dart';
import 'package:capstone_frontend/providers/workout_provider.dart';
import 'package:capstone_frontend/themes/dark_theme.dart';
import 'package:capstone_frontend/widgets/video_player/network_player_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'themes/light_theme.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(
          create: (_) => AuthProvider(),
        ),
        ChangeNotifierProvider<TrainerProvider>(
          create: (_) => TrainerProvider(),
        ),
        ChangeNotifierProvider<ThemeProvider>(
          create: (_) => ThemeProvider(),
        ),

        ChangeNotifierProvider<TraineeProvider>(
          create: (_) => TraineeProvider(),),

        ChangeNotifierProvider<PlanProvider>(
          create: (_) => PlanProvider(),
        ),
        ChangeNotifierProvider<WorkoutProvider>(
          create: (_) => WorkoutProvider(),
        ),
        ChangeNotifierProvider<CategoryProvider>(
          create: (_) => CategoryProvider(),

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
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      themeMode: themeProvider.themeMode,
      theme: lightTheme,
      darkTheme: darkTheme,
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
        builder: (context, state) => EditProfile(),
      ),
      GoRoute(
        path: "/trainer-profile",

        builder: (context, state) => TrainerProfile(trainerId: state.extra),

      ),
      GoRoute(
        path: "/trainers-list",
        builder: (context, state) => TrainersListPage(),
      ),
      GoRoute(
        path: "/exercises-list",
        builder: (context, state) => ExercisesListPage(categoryId: state.extra as int),
      ),
      GoRoute(
        path: "/exercise",
        builder: (context, state) => MyHomePage(),
      ),
    ],
  );
}
