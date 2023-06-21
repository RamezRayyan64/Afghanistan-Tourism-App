import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/touristic_city_about_screen/bottom_navigation_bar_screens/widgets/touristic_city_item_widget.dart';
import 'package:flutter/material.dart';

class TouristicCityIndustriesScreen extends StatelessWidget {
  const TouristicCityIndustriesScreen(
      {super.key, required this.touristicCityIndustryItemsList});

  final List<Map<String, dynamic>> touristicCityIndustryItemsList;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(touristicCityIndustryItemsList.length, (index) {
          return TouristicCityItemWidget(
            imageUrl: touristicCityIndustryItemsList[index]['image_url'],
            name: touristicCityIndustryItemsList[index]['name'],
            description: touristicCityIndustryItemsList[index]['description'],
          );
        }),
      ),
    );
  }
}
