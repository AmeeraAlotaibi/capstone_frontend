import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  // GLOBAL THEME
  fontFamily: 'inter',
  scaffoldBackgroundColor: Colors.white,
  primaryColor: const Color(0xFF7860ff),
  secondaryHeaderColor: const Color(0xFF967cfe),
  // card backgrounds
  cardColor: const Color(0xFFf2eefc),
  // color for dividers
  dividerColor: Colors.grey[200],
  // trailing icon color
  canvasColor: const Color(0xFF4c4c4c),

  // shadow color for search bar
  shadowColor: const Color.fromRGBO(156, 156, 156, 1),

  // ICONS
  iconTheme: const IconThemeData(
    color: Color(0xFF7860ff),
  ),
  colorScheme: ThemeData().colorScheme.copyWith(
        primary: const Color(0xFF7860ff),
      ),

  // APP BAR THEME
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.white,
    toolbarHeight: 50,
    titleTextStyle: TextStyle(
      color: Color(0xFF4c4c4c),
      fontSize: 20,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.75,
    ),
    iconTheme: IconThemeData(
      color: Color(0xFF4c4c4c),
      size: 25,
    ),
    actionsIconTheme: IconThemeData(
      color: Color(0xFF4c4c4c),
      size: 25,
    ),
  ),
  // BOTTOM NAVIGATION BAR
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    elevation: 0,
    backgroundColor: Colors.white,
    type: BottomNavigationBarType.fixed,
    selectedIconTheme: IconThemeData(
      color: Color(0xFF7860ff),
    ),
    unselectedIconTheme: IconThemeData(
      color: Color.fromARGB(255, 130, 130, 130),
    ),
    selectedLabelStyle: TextStyle(
      color: Color(0xFF7860ff),
      fontSize: 10,
    ),
    unselectedLabelStyle: TextStyle(
      color: Color(0xFF4c4c4c),
      fontSize: 10,
    ),
    showSelectedLabels: true,
    showUnselectedLabels: false,
  ),

  // TEXT STYLES
  // Font Weights 700, 500, 300, 200
  textTheme: TextTheme(
    // HEADINGs
    headline1: TextStyle(
      color: Color(0xFF7860ff),
      fontSize: 30,
      fontWeight: FontWeight.w700,
    ),

    headline2: TextStyle(
      color: Color(0xFF967cfe),
      fontSize: 25,
      fontWeight: FontWeight.w700,
    ),

    headline3: TextStyle(
      color: Color(0xFF4c4c4c),
      fontSize: 30,
      fontWeight: FontWeight.w700,
    ),

    // workout title in schedule card
    headline4: TextStyle(
      color: Color(0xFF4c4c4c),
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),

    // FULL name of users (Trainers and Trainees)
    headline5: TextStyle(
      color: Color(0xFF4c4c4c),
      fontSize: 21,
      fontWeight: FontWeight.w700,
    ),
    // number of sets in schdeule card && scetion headings
    headline6: TextStyle(
      color: Color(0xFF4c4c4c),
      fontWeight: FontWeight.w700,
      fontSize: 18,
    ),
    // SUBTITLES
    subtitle1: TextStyle(
      color: Color(0xFF4c4c4c),
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),
    // small details on the schedule card
    subtitle2: TextStyle(
      color: Color.fromARGB(255, 121, 121, 121),
      fontSize: 15,
    ),

    // Welcome card hello there styles
    caption: TextStyle(
      fontSize: 20,
      letterSpacing: 1,
      color: Color.fromARGB(255, 184, 184, 184),
    ),

    // genreal body text
    bodyText1: TextStyle(
      color: Color(0xFF4c4c4c),
      fontSize: 15,
      fontWeight: FontWeight.w500,
    ),

    // details titles in details card
    bodyText2: TextStyle(
      color: Colors.grey[700],
      fontSize: 14,
    ),
  ),

  // ************ INPUT DECORATION THEME
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
    hintStyle: const TextStyle(
      color: Color.fromARGB(255, 184, 184, 184),
    ),
    suffixStyle: const TextStyle(
      color: Color.fromARGB(255, 184, 184, 184),
    ),
    filled: true,
    fillColor: Colors.white,
    errorStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    border: OutlineInputBorder(
      borderSide: const BorderSide(
        width: 1,
        color: Color.fromARGB(255, 184, 184, 184),
      ),
      borderRadius: BorderRadius.circular(5),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2,
        color: Color(0xFF7860ff),
      ),
      borderRadius: BorderRadius.circular(5),
    ),
    errorBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.red,
        width: 1,
      ),
    ),
  ),

  // TAB BAR THEME
  tabBarTheme: const TabBarTheme(
    labelColor: Color(0xFF7860ff),
    labelStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
    ),
    unselectedLabelColor: Color(0xFF4c4c4c),
  ),
);
