import 'package:afghanistan_tourism_app/constants/colors.dart';
import 'package:flutter/material.dart';

ThemeData darkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: kBackgroundColorDark,
      onPrimary: Colors.blue,
      secondary: kBackgroundColorDark,
      onSecondary: Colors.cyan,
      primaryContainer: kBackgroundColorDark,
      error: Colors.purple,
      onError: Colors.green,
      background: Colors.indigo,
      onBackground: Colors.pink,
      surface: kBackgroundColorDark,
      onSurface: kTextColorDark,
    ),
    appBarTheme: AppBarTheme(backgroundColor: kBackgroundColorDark),
    textTheme: const TextTheme(
      titleMedium: TextStyle(
        fontWeight: FontWeight.bold,
      ),
      titleLarge: TextStyle(
        color: Colors.white,
      ),
      headlineSmall: TextStyle(
        color: kTextHeadlineSmallColorDark,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(
        color: Colors.white,
      ),
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: kProgressIndicatorColorDark,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: kSelectedItemColorDark,
      unselectedItemColor: kUnselectedItemColorDark,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(kBackgroundColorDark),
      ),
    ),
  );
}
