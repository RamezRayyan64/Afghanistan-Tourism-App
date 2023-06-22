import 'package:afghanistan_tourism_app/packages/firebase/realtime_database/realtime_database.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/main_home_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  static const String id = '/loading_screen';

  @override
  Widget build(BuildContext context) {
    goToNextScreen(context);
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }

  Future<void> goToNextScreen(BuildContext context) async {
    await getTouristicCities().then((value) {
      Navigator.pushNamedAndRemoveUntil(
          context, MainHomeScreen.id, (route) => false);
    });
  }
}
