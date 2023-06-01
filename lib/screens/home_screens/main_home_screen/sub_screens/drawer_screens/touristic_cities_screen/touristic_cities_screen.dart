import 'package:afghanistan_tourism_app/constants/lists.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/drawer_screens/touristic_cities_screen/widgets/touristic_cities_items_list_widget.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/drawer_screens/widgets/top_screen_text_widget.dart';
import 'package:flutter/material.dart';

class TouristicCitiesScreen extends StatelessWidget {
  const TouristicCitiesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopScreenTextWidget(
          text: 'Touristic Cities',
        ),
        TouristicCitiesItemsListWidget(
          touristicCitiesList: touristicCitiesList,
        ),
      ],
    );
  }
}
