import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:afghanistan_tourism_app/packages/adaptive_theme/dark_theme.dart';
import 'package:afghanistan_tourism_app/packages/adaptive_theme/light_theme.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/touristic_city_about_screen/touristic_city_detail_screen.dart';
import 'package:afghanistan_tourism_app/screens/initial_screens/loading_screen/loading_screen.dart';
import 'package:afghanistan_tourism_app/screens/initial_screens/splash_screen/splash_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/home_screens/main_home_screen/main_home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('fa'), Locale('ps')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: lightTheme(),
      dark: darkTheme(),
      initial: AdaptiveThemeMode.system,
      builder: (lightTheme, darkTheme) => MaterialApp(
        title: 'Afghanistan Tourism App',
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: lightTheme,
        darkTheme: darkTheme,
        initialRoute: SplashScreen.id,
        routes: {
          SplashScreen.id: (context) => const SplashScreen(),
          LoadingScreen.id: (context) => const LoadingScreen(),
          MainHomeScreen.id: (context) => const MainHomeScreen(),
          TouristicCityDetailScreen.id: (context) =>
              const TouristicCityDetailScreen(),
        },
      ),
    );
  }
}
