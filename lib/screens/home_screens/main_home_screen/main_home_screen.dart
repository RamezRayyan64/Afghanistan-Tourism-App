import 'package:afghanistan_tourism_app/constants/bottom_sheet_model.dart';
import 'package:afghanistan_tourism_app/constants/lists.dart';
import 'package:afghanistan_tourism_app/helper/functions.dart';
import 'package:afghanistan_tourism_app/packages/geolocator/geolocator.dart';
import 'package:afghanistan_tourism_app/packages/share_plus/share_plus.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/drawer_screens/contact_us_screen/contact_us_screen.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/drawer_screens/exchange_rates_screen/exchange_rates_screen.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/drawer_screens/languages_screen/languages_screen.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/drawer_screens/my_location_screen/my_location_screen.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/drawer_screens/references_screen/references_screen.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/drawer_screens/touristic_cities_screen/touristic_cities_screen.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/drawer_screens/weather_forecast_screen/weather_forecast_screen.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/widgets/drawer_widgets/custom_drawer_widget.dart';
import 'package:afghanistan_tourism_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  static const String id = '/main_home_screen';

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  int currentDrawerIndex = 0;
  bool isAppExited = false;
  List drawerScreens = [
    const TouristicCitiesScreen(),
    const ExchangeRatesScreen(),
    const WeatherForecastScreen(),
    const MyLocationScreen(),
    const LanguagesScreen(),
    ReferencesScreen(
      referencesItemsList: referencesItemsList,
    ),
    const ContactUsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    getCurrentPosition();
    return WillPopScope(
      onWillPop: onWillPopScopeAction,
      child: Scaffold(
        appBar: appBarWithTitle(title: LocaleKeys.app_name.tr()),
        drawer: CustomDrawerWidget(
          onTap: onTapDrawerItem,
          currentDrawerIndex: currentDrawerIndex,
        ),
        body: SingleChildScrollView(
            physics: currentDrawerIndex == 3
                ? const NeverScrollableScrollPhysics()
                : const BouncingScrollPhysics(),
            child: drawerScreens[currentDrawerIndex]),
      ),
    );
  }

  onTapDrawerItem(index) {
    setState(() {
      if (index <= 6) {
        currentDrawerIndex = index;
      } else if (index == 7) {
        shareApp();
      } else {
        Navigator.pop(context);
        showSelectBottomSheetModel(
            context, 'Do you want to exit from app?', ['Yes', 'No'],
            (value, index) {
          if (index == 0) {
            exitApp();
            return;
          }
          Navigator.pop(context);
        });
      }
    });
    if (index != 8) {
      Navigator.pop(context);
    }
  }

  Future<bool> onWillPopScopeAction() {
    showSelectBottomSheetModel(
        context, 'Do you want to exit from app?', ['Yes', 'No'],
        (value, index) {
      if (index == 0) {
        exitApp();
        return;
      }
      Navigator.pop(context);
    });
    return Future.value(false);
  }
}
