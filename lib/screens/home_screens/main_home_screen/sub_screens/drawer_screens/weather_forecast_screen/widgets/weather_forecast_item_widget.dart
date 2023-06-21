import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/drawer_screens/weather_forecast_screen/widgets/weather_forecast_sub_item_widget.dart';
import 'package:flutter/material.dart';

class WeatherForecastItemWidget extends StatelessWidget {
  const WeatherForecastItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Today',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      'Mon, 7 Nev',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: List.generate(6, (index) {
                    return WeatherForecastSubItemWidget(
                      index: index,
                    );
                  }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
