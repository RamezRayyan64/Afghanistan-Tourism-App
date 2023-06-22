import 'package:afghanistan_tourism_app/constants/constants.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/touristic_city_about_screen/touristic_city_detail_screen.dart';
import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class TouristicCitiesItemsListWidget extends StatelessWidget {
  const TouristicCitiesItemsListWidget({
    super.key,
    required this.touristicCitiesList,
  });

  final List<String> touristicCitiesList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: StaggeredGrid.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: List.generate(
          touristicCitiesList.length,
          (index) {
            return BouncingWidget(
              onPressed: () {
                touristicCityIndex = index;
                Navigator.pushNamed(context, TouristicCityDetailScreen.id);
              },
              child: Card(
                color: Theme.of(context).colorScheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: const Image(
                        image: AssetImage('assets/cities/herat.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 7.5),
                      child: Text(
                        touristicCitiesList[index],
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
