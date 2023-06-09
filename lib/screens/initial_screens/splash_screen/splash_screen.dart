import 'package:afghanistan_tourism_app/constants/images.dart';
import 'package:afghanistan_tourism_app/screens/initial_screens/loading_screen/loading_screen.dart';
import 'package:afghanistan_tourism_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const String id = '/splash_screen';

  @override
  Widget build(BuildContext context) {
    goToNextScreen(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                LocaleKeys.welcome_splash.tr(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            const Image(
              image: AssetImage(kSplashImage),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                LocaleKeys.travel_now.tr(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void goToNextScreen(BuildContext context) async {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context, LoadingScreen.id, (route) => false);
    });
  }
}
