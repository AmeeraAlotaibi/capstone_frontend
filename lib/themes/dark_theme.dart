import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  // GLOBAL THEME
  fontFamily: 'inter',
  scaffoldBackgroundColor: const Color(0xFF2b2e43),
  primaryColor: const Color(0xFF5440c6),
  secondaryHeaderColor: const Color(0xFF9d84ff),
  // card backgrounds
  cardColor: const Color(0xFF343952),
  // color for dividers
  dividerColor: const Color(0xFF4c506d),
  // trailing icon color
  canvasColor: const Color(0xFFede9e9),

  // shadow color for search bar
  shadowColor: Color.fromARGB(255, 64, 69, 109),

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
    backgroundColor: const Color(0xFF2b2e43),
    toolbarHeight: 50,
    titleTextStyle: TextStyle(
      color: Color(0xFFede9e9),
      fontSize: 20,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.75,
    ),
    iconTheme: IconThemeData(
      color: Color(0xFFede9e9),
      size: 25,
    ),
    actionsIconTheme: IconThemeData(
      color: Color(0xFFede9e9),
      size: 25,
    ),
  ),
  // BOTTOM NAVIGATION BAR
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    elevation: 0,
    backgroundColor: Color(0xFF2b2e43),
    type: BottomNavigationBarType.fixed,
    selectedIconTheme: IconThemeData(
      color: Color(0xFF7860ff),
    ),
    unselectedIconTheme: IconThemeData(
      color: Color.fromARGB(255, 122, 129, 174),
    ),
    selectedLabelStyle: TextStyle(
      color: Color(0xFF7860ff),
      fontSize: 10,
    ),
    unselectedLabelStyle: TextStyle(
      color: Color.fromARGB(255, 122, 129, 174),
      fontSize: 10,
    ),
    showSelectedLabels: true,
    showUnselectedLabels: false,
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

    headline2: TextStyle(
      color: Color(0xFF967cfe),
      fontSize: 25,
      fontWeight: FontWeight.w700,
    ),

    headline3: TextStyle(
      color: Color(0xFFede9e9),
      fontSize: 30,
      fontWeight: FontWeight.w700,
    ),

    // workout title in schedule card
    headline4: TextStyle(
      color: Color(0xFFede9e9),
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),

    // FULL name of users (Trainers and Trainees)
    headline5: TextStyle(
      color: Color(0xFFede9e9),
      fontSize: 21,
      fontWeight: FontWeight.w700,
    ),
    // number of sets in schdeule card && scetion headings
    headline6: TextStyle(
      color: Color(0xFFede9e9),
      fontWeight: FontWeight.w700,
      fontSize: 18,
    ),
    // SUBTITLES
    subtitle1: TextStyle(
      color: Color(0xFFede9e9),
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),
    // small details on the schedule card
    subtitle2: TextStyle(
      color: Color.fromARGB(255, 122, 129, 174),
      fontSize: 15,
    ),

    // Welcome card hello there styles
    caption: TextStyle(
      fontSize: 20,
      letterSpacing: 1,
      color: Color.fromARGB(255, 122, 129, 174),
    ),

    // genreal body text
    bodyText1: TextStyle(
      color: Color(0xFFede9e9),
      fontSize: 15,
      fontWeight: FontWeight.w500,
    ),

    // details titles in details card
    bodyText2: TextStyle(
      color: Color(0xFFede9e9),
      fontSize: 14,
    ),
  ),

  // ************ INPUT DECORATION THEME
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
    hintStyle: const TextStyle(
      color: Color.fromARGB(255, 122, 129, 174),
    ),
    suffixStyle: const TextStyle(
      color: Color.fromARGB(255, 122, 129, 174),
    ),
    suffixIconColor: const Color.fromARGB(255, 122, 129, 174),
    prefixIconColor: const Color.fromARGB(255, 122, 129, 174),
    filled: true,
    fillColor: const Color(0xFF31344c),
    errorStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: const BorderSide(
        width: 1,
        color: Color(0xFF4c506d),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: const BorderSide(
        width: 2,
        color: Color(0xFF7860ff),
      ),
    ),
    errorBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.redAccent,
        width: 1,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: const BorderSide(
        color: Colors.red,
        width: 2,
      ),
    ),
  ),

  tabBarTheme: const TabBarTheme(
    labelColor: Color(0xFF7860ff),
    labelStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
    ),
    unselectedLabelColor: Color.fromARGB(255, 122, 129, 174),
  ),
);
