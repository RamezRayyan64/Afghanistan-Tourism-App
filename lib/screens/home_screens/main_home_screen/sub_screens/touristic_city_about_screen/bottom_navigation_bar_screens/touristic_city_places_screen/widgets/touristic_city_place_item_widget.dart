import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/touristic_city_about_screen/bottom_navigation_bar_screens/touristic_city_places_screen/widgets/touristic_city_place_detials_widget.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/touristic_city_about_screen/bottom_navigation_bar_screens/widgets/touristic_city_image_widget.dart';
import 'package:flutter/material.dart';

class TouristicCityPlaceItemWidget extends StatelessWidget {
  const TouristicCityPlaceItemWidget({
    super.key,
    required this.placeImageUrl,
    required this.placeName,
    required this.placeLocation,
    required this.placeStarRatingDescription,
  });

  final String placeImageUrl;
  final String placeName;
  final String placeLocation;
  final String placeStarRatingDescription;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          TouristicCityImageWidget(
            imageUrl: placeImageUrl,
          ),
          TouristicCityPlaceDetialsWidget(
            placeName: placeName,
            placeLocation: placeLocation,
            placeRatingStarDescription: placeStarRatingDescription,
          )
        ],
      ),
    );
  }
}
