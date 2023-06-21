import 'package:afghanistan_tourism_app/constants/lists.dart';
import 'package:afghanistan_tourism_app/helper/functions.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/touristic_city_about_screen/bottom_navigation_bar_screens/touristic_city_about_screen/touristic_city_about_screen.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/touristic_city_about_screen/bottom_navigation_bar_screens/touristic_city_festivals_screen/touristic_city_festivals_screen.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/touristic_city_about_screen/bottom_navigation_bar_screens/touristic_city_industries_screen/touristic_city_industries_screen.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/touristic_city_about_screen/bottom_navigation_bar_screens/touristic_city_local_foods_screen/touristic_city_local_foods_screen.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/touristic_city_about_screen/bottom_navigation_bar_screens/touristic_city_places_screen/touristic_city_places_screen.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/touristic_city_about_screen/widgets/custom_bottom_navigation_bar_widget.dart';
import 'package:afghanistan_tourism_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class TouristicCityDetailScreen extends StatefulWidget {
  const TouristicCityDetailScreen({super.key});

  static const String id = '/touristic_city_detail_screen';

  @override
  State<TouristicCityDetailScreen> createState() =>
      _TouristicCityDetailScreenState();
}

class _TouristicCityDetailScreenState extends State<TouristicCityDetailScreen> {
  String touristicCityName = '';
  dynamic arguments = {};
  int currentBNBIndex = 0;

  @override
  Widget build(BuildContext context) {
    getArguments(context);
    List bottomNavigationBarScreen = [
      const TouristicCityAboutScreen(),
      TouristicCityPlacesScreen(
        touristicCityPlaceItemsList: touristicCityPlaceItemsList,
      ),
      TouristicCityIndustriesScreen(
        touristicCityIndustryItemsList: touristicCityIndustryItemsList,
      ),
      TouristicCityFestivalsScreen(
        touristicCityFestivalItemsList: touristicCityFestivalsItemsList,
      ),
      TouristicCityLocalFoodsScreen(
        touristicCityLocalFoodItemsList: touristicCityLocalFoodsItemsList,
      )
    ];
    return Scaffold(
      appBar: appBarWithTitle(
          title: LocaleKeys.province_name.tr(args: [touristicCityName])),
      body: bottomNavigationBarScreen[currentBNBIndex],
      bottomNavigationBar: CustomBottomNavigationBarWidget(
        currentBNBIndex: currentBNBIndex,
        onTap: (index) {
          setState(() {
            currentBNBIndex = index;
          });
        },
      ),
    );
  }

  void getArguments(BuildContext context) {
    arguments = ModalRoute.of(context)!.settings.arguments;
    touristicCityName = arguments['touristic_city_name'];
  }
}
