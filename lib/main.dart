import 'package:afghanistan_tourism_app/screens/splash_screen/splash_screen.dart';
import 'package:afghanistan_tourism_app/utilities/theme/dark_theme.dart';
import 'package:afghanistan_tourism_app/utilities/theme/light_theme.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Afghanistan Tourism App',
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      darkTheme: darkTheme(),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
      },
    );
  }
}
