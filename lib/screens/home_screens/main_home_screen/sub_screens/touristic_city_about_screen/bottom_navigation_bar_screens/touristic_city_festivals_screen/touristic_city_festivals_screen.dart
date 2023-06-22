import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/touristic_city_about_screen/bottom_navigation_bar_screens/widgets/touristic_city_item_widget.dart';
import 'package:flutter/material.dart';

class TouristicCityFestivalsScreen extends StatelessWidget {
  const TouristicCityFestivalsScreen(
      {super.key, required this.touristicCityFestivalItemsList});

  final List touristicCityFestivalItemsList;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(touristicCityFestivalItemsList.length, (index) {
          return touristicCityFestivalItemsList[index] == null
              ? const SizedBox()
              : TouristicCityItemWidget(
                  imageUrl: touristicCityFestivalItemsList[index]
                      ['touristicCityFestivalImage'],
                  name: touristicCityFestivalItemsList[index]
                      ['touristicCityFestivalTitle'],
                  description: touristicCityFestivalItemsList[index]
                      ['touristicCityFestivalDescription'],
                );
        }),
      ),
    );
  }
}
