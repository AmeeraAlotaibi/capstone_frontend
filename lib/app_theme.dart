import 'package:flutter/material.dart';

ThemeData myTheme = ThemeData(
  // GLOBAL THEME
  fontFamily: 'inter',
  primaryColor: Color(0xFF5FA8D3),
  // ICONS
  iconTheme: const IconThemeData(
    color: Color(0xFF1B4965),
  ),

  colorScheme: ThemeData().colorScheme.copyWith(
        primary: const Color(0xFF5FA8D3),
      ),

  // APP BAR THEME
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.transparent,
    toolbarHeight: 50,
    titleTextStyle: TextStyle(
      color: Color.fromARGB(255, 32, 32, 32),
      fontSize: 20,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.75,
    ),
    iconTheme: IconThemeData(
      color: Color.fromARGB(255, 32, 32, 32),
      size: 25,
    ),
    actionsIconTheme: IconThemeData(
      color: Color.fromARGB(255, 32, 32, 32),
      size: 25,
    ),
  ),
  // BOTTOM NAVIGATION BAR
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    elevation: 0,
    backgroundColor: Color(0xFF5FA8D3),
    type: BottomNavigationBarType.fixed,
    selectedIconTheme: IconThemeData(
      color: Color.fromARGB(255, 255, 255, 255),
      size: 25,
    ),
    selectedLabelStyle: TextStyle(
      color: Colors.white,
    ),
    showSelectedLabels: false,
    showUnselectedLabels: false,
  ),

  // TEXT STYLES
  // Font Weights 700, 500, 300, 200
  textTheme: const TextTheme(
    // HEADINGs
    headline1: TextStyle(
      color: Color(0xFF1B4965),
      fontSize: 40,
      fontWeight: FontWeight.w700,
    ),
    // SUBTITLES
    subtitle1: TextStyle(
      color: Color(0xFF7d8597),
      fontSize: 20,
      fontWeight: FontWeight.w400,
    ),
    // BODY
    bodyText1: TextStyle(
      color: Color.fromARGB(255, 30, 30, 30),
      fontSize: 15,
      fontWeight: FontWeight.w500,
    ),
    // CARDS TITLE
    headline6: TextStyle(
      color: Color.fromARGB(255, 30, 30, 30),
      fontWeight: FontWeight.w700,
      fontSize: 17.5,
    ),
    // SECTION HEADINGS
    headline2: TextStyle(
      color: Color.fromARGB(255, 30, 30, 30),
      fontSize: 25,
      fontWeight: FontWeight.w700,
    ),
  ),
);
