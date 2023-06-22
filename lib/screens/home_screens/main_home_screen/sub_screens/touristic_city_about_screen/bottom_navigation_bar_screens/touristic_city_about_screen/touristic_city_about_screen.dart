import 'package:afghanistan_tourism_app/constants/lists.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/touristic_city_about_screen/bottom_navigation_bar_screens/touristic_city_about_screen/widgets/touristic_city_about_detail_widget.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/touristic_city_about_screen/bottom_navigation_bar_screens/touristic_city_about_screen/widgets/touristic_city_image_widget.dart';
import 'package:flutter/material.dart';

class TouristicCityAboutScreen extends StatelessWidget {
  const TouristicCityAboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TouristicCityAboutImageWidget(),
          const SizedBox(
            height: 5,
          ),
          TouristicCityAboutDetailWidget(
            title: touristicCityAboutTextItemsList[0]['touristicCityHomeTitle'],
            type: 'text',
            text: touristicCityAboutTextItemsList[0]
                ['touristicCityHomeDescription'],
            maxLine: 5,
          ),
          TouristicCityAboutDetailWidget(
            title: 'Gallary',
            type: 'gallary',
            galleriesList: touristicCityAboutGallaryItemsList,
          ),
          TouristicCityAboutDetailWidget(
            title: touristicCityAboutTextItemsList[2]['touristicCityHomeTitle'],
            type: 'text',
            text: touristicCityAboutTextItemsList[2]
                ['touristicCityHomeDescription'],
            maxLine: 5,
          ),
          TouristicCityAboutDetailWidget(
            title: 'Notable People',
            type: 'notable_people',
            notablePeopleList: touristicCityAboutNotablePeopleItemsList,
          ),
          TouristicCityAboutDetailWidget(
            title: touristicCityAboutTextItemsList[4]['touristicCityHomeTitle'],
            type: 'text',
            text: touristicCityAboutTextItemsList[4]
                ['touristicCityHomeDescription'],
            maxLine: 5,
          ),
          TouristicCityAboutDetailWidget(
            title: touristicCityAboutTextItemsList[5]['touristicCityHomeTitle'],
            type: 'text',
            text: touristicCityAboutTextItemsList[5]
                ['touristicCityHomeDescription'],
            maxLine: 5,
          ),
          TouristicCityAboutDetailWidget(
            title: 'District',
            type: 'district',
            districtsList: touristicCityAboutDistrictItemsList,
          ),
        ],
      ),
    );
  }
}
