import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/touristic_city_about_screen/bottom_navigation_bar_screens/touristic_city_about_screen/widgets/touristic_city_about_detail_districts_widget.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/touristic_city_about_screen/bottom_navigation_bar_screens/touristic_city_about_screen/widgets/touristic_city_about_detail_gallaries_widget.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/touristic_city_about_screen/bottom_navigation_bar_screens/touristic_city_about_screen/widgets/touristic_city_about_detail_notable_people_widget.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/touristic_city_about_screen/bottom_navigation_bar_screens/touristic_city_about_screen/widgets/touristic_city_about_detail_text_widget.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/touristic_city_about_screen/bottom_navigation_bar_screens/touristic_city_about_screen/widgets/touristic_city_about_detail_title_widget.dart';
import 'package:flutter/material.dart';

class TouristicCityAboutDetailWidget extends StatelessWidget {
  const TouristicCityAboutDetailWidget({
    super.key,
    required this.title,
    required this.type,
    this.text,
    this.maxLine,
    this.galleriesList,
    this.notablePeopleList,
    this.districtsList,
  });

  final String title;
  final String type;
  final String? text;
  final int? maxLine;
  final List<String>? galleriesList;
  final List<Map<String, dynamic>>? notablePeopleList;
  final List<Map<String, dynamic>>? districtsList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TouristicCityAboutDetailTitleWidget(title: title),
        type == 'text'
            ? TouristicCityAboutDetailTextWidget(
                text: text!,
                maxLines: maxLine!,
              )
            : const SizedBox(),
        type == 'gallary'
            ? TouristicCityAboutDetailGallariesWidget(
                galleriesList: galleriesList,
              )
            : const SizedBox(),
        type == 'notable_people'
            ? TouristicCityAboutDetailNotablePeopleWidget(
                notablePeopleList: notablePeopleList,
              )
            : const SizedBox(),
        type == 'district'
            ? TouristicCityAboutDetailDistrictsWidget(
                districtsList: districtsList,
              )
            : const SizedBox(),
      ],
    );
  }
}
