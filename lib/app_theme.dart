import 'package:flutter/material.dart';

ThemeData myTheme = ThemeData(
  // GLOBAL THEME
  fontFamily: 'inter',
  scaffoldBackgroundColor: Colors.white,
  primaryColor: const Color(0xFF7860ff),
  secondaryHeaderColor: const Color(0xFF967cfe),
  cardColor: const Color(0xFFf2eefc),
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
    backgroundColor: Colors.transparent,
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
    showUnselectedLabels: true,
  ),

  // TEXT STYLES
  // Font Weights 700, 500, 300, 200
  textTheme: const TextTheme(
    // HEADINGs
    headline1: TextStyle(
      color: Color(0xFF735cfd),
      fontSize: 30,
      fontWeight: FontWeight.w700,
    ),
    // SUBTITLES
    subtitle1: TextStyle(
      color: Color(0xFF4c4c4c),
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),

    subtitle2: TextStyle(
      color: Color.fromARGB(255, 121, 121, 121),
      fontSize: 15,
    ),
    // BODY
    bodyText1: TextStyle(
      color: Color(0xFF4c4c4c),
      fontSize: 15,
      fontWeight: FontWeight.w500,
    ),
    // CARDS TITLE
    headline6: TextStyle(
      color: Color(0xFF4c4c4c),
      fontWeight: FontWeight.w700,
      fontSize: 18,
    ),
    // SECTION HEADINGS
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
  ),

  // ************ INPUT DECORATION THEME
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
    hintStyle: const TextStyle(
      color: Color.fromARGB(255, 184, 184, 184),
    ),
    suffixStyle: const TextStyle(
      color: Color.fromARGB(255, 150, 150, 150),
    ),
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderSide: const BorderSide(
        width: 1,
        color: Color.fromARGB(96, 60, 60, 60),
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
);
