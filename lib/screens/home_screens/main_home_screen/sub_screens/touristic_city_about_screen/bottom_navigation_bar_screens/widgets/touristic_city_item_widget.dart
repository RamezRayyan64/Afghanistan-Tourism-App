import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/touristic_city_about_screen/bottom_navigation_bar_screens/widgets/touristic_city_image_widget.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/touristic_city_about_screen/bottom_navigation_bar_screens/widgets/touristic_city_name_and_description_column_widgets.dart';
import 'package:flutter/material.dart';

class TouristicCityItemWidget extends StatelessWidget {
  const TouristicCityItemWidget({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.description,
  });

  final String imageUrl;
  final String name;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TouristicCityImageWidget(
            imageUrl: imageUrl,
          ),
          TouristicCityNameAndDescriptionColumnWidgets(
            name: name,
            description: description,
          )
        ],
      ),
    );
  }
}
