import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/touristic_city_about_screen/bottom_navigation_bar_screens/touristic_city_places_screen/widgets/touristic_city_place_name_and_location_column_widgets.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/touristic_city_about_screen/bottom_navigation_bar_screens/touristic_city_places_screen/widgets/touristic_city_place_star_rating_row_widgets.dart';
import 'package:flutter/material.dart';

class TouristicCityPlaceDetialsWidget extends StatelessWidget {
  const TouristicCityPlaceDetialsWidget({
    super.key,
    required this.placeName,
    required this.placeLocation,
    required this.placeRatingStarDescription,
  });

  final String placeName;
  final String placeLocation;
  final String placeRatingStarDescription;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 10,
            child: TouristicCityPlaceNameLocationWidgets(
              placeName: placeName,
              placeLocation: placeLocation,
            ),
          ),
          Expanded(
            flex: 4,
            child: TouristicCityPlaceStarRatingRowWidgets(
              placeRatingStarDescription: placeRatingStarDescription,
            ),
          ),
        ],
      ),
    );
  }
}
