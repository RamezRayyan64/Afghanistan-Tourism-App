import 'package:afghanistan_tourism_app/helper/functions.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/drawer_screens/touristic_cities_screen/touristic_cities_screen.dart';
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
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWillPopScopeAction,
      child: Scaffold(
        appBar: appBarWithTitle(title: 'Afghanistan Tourism App'),
        body: SingleChildScrollView(child: drawerScreens[currentDrawerIndex]),
      ),
    );
  }

  Future<bool> onWillPopScopeAction() {
    return Future.value(false);
  }
}
