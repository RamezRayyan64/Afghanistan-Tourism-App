import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/touristic_city_about_screen/bottom_navigation_bar_screens/widgets/touristic_city_item_widget.dart';
import 'package:flutter/material.dart';

class TouristicCityLocalFoodsScreen extends StatelessWidget {
  const TouristicCityLocalFoodsScreen(
      {super.key, required this.touristicCityLocalFoodItemsList});

  final List touristicCityLocalFoodItemsList;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
            List.generate(touristicCityLocalFoodItemsList.length, (index) {
          return touristicCityLocalFoodItemsList[index] == null
              ? const SizedBox()
              : TouristicCityItemWidget(
                  imageUrl: touristicCityLocalFoodItemsList[index]
                      ['touristicCityLocalFoodImage'],
                  name: touristicCityLocalFoodItemsList[index]
                      ['touristicCityLocalFoodTitle'],
                  description: touristicCityLocalFoodItemsList[index]
                      ['touristicCityLocalFoodDescription'],
                );
        }),
      ),
    );
  }
}
