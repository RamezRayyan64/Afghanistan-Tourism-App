import 'package:afghanistan_tourism_app/helper/functions.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/drawer_screens/exchange_rates_screen/exchange_rates_screen.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/drawer_screens/touristic_cities_screen/touristic_cities_screen.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/drawer_screens/widgets/drawer_widgets/custom_drawer_widget.dart';
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
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWillPopScopeAction,
      child: Scaffold(
        appBar: appBarWithTitle(title: 'Afghanistan Tourism App'),
        drawer: CustomDrawerWidget(
          onTap: onTapDrawerItem,
          currentDrawerIndex: currentDrawerIndex,
        ),
        body: SingleChildScrollView(child: drawerScreens[currentDrawerIndex]),
      ),
    );
  }

  Future<bool> onWillPopScopeAction() {
    return Future.value(false);
  }

  onTapDrawerItem(index) {
    setState(() {
      if (index <= 6) {
        currentDrawerIndex = index;
      } else if (index == 7) {
      } else {}
    });
    if (index != 8) {
      Navigator.pop(context);
    }
  }
}
