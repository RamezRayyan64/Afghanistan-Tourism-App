import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/touristic_city_about_screen/bottom_navigation_bar_screens/touristic_city_places_screen/widgets/touristic_city_place_item_widget.dart';
import 'package:flutter/material.dart';

class TouristicCityPlacesScreen extends StatelessWidget {
  const TouristicCityPlacesScreen(
      {super.key, required this.touristicCityPlaceItemsList});

  final List<Map<String, dynamic>> touristicCityPlaceItemsList;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(touristicCityPlaceItemsList.length, (index) {
          return TouristicCityPlaceItemWidget(
            placeImageUrl: touristicCityPlaceItemsList[index]
                ['place_image_url'],
            placeName: touristicCityPlaceItemsList[index]['place_name'],
            placeLocation: touristicCityPlaceItemsList[index]['place_location'],
            placeStarRatingDescription: touristicCityPlaceItemsList[index]
                ['place_star_rating_description'],
          );
        }),
      ),
    );
  }
}
