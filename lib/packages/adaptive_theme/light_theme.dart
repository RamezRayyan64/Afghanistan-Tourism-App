import 'package:afghanistan_tourism_app/constants/colors.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Colors.white,
      onPrimary: kPrimaryColor,
      secondary: kBackgroundColorLight,
      onSecondary: Colors.cyan,
      primaryContainer: kBackgroundColorLight,
      error: Colors.purple,
      onError: Colors.green,
      background: Colors.indigo,
      onBackground: Colors.pink,
      surface: kBackgroundColorLight,
      onSurface: kTextColorLight,
    ),
    appBarTheme: const AppBarTheme(elevation: 0.5),
    textTheme: const TextTheme(
      titleSmall: TextStyle(
        color: kPrimaryColor,
      ),
      titleMedium: TextStyle(
        color: kPrimaryColor,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: TextStyle(
        color: kPrimaryColor,
      ),
      headlineSmall: TextStyle(
        color: kTextHeadlineSmallColorLight,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(
        color: kPrimaryColor,
      ),
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: kProgressIndicatorColorLight,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: kSelectedItemColorLight,
      unselectedItemColor: kUnselectedItemColorLight,
    ),
    iconTheme: const IconThemeData(
      color: kPrimaryColor,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent,
    ),
    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(kPrimaryColor),
      ),
    ),
  );
}
