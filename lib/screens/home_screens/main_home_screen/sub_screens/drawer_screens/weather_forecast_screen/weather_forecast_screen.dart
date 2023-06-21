import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/drawer_screens/weather_forecast_screen/widgets/weather_forecast_item_widget.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/drawer_screens/widgets/custom_text_field_widget.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/drawer_screens/widgets/top_screen_text_widget.dart';
import 'package:flutter/material.dart';

class WeatherForecastScreen extends StatefulWidget {
  const WeatherForecastScreen({super.key});

  @override
  State<WeatherForecastScreen> createState() => _WeatherForecastScreenState();
}

class _WeatherForecastScreenState extends State<WeatherForecastScreen> {
  String search = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: CustomTextFieldWidget(
            maxLine: 1,
            onChanged: (value) {},
            hintText: 'Search here...',
            labelText: 'Search',
          ),
        ),
        const TopScreenTextWidget(
          text: 'Weather Forecast - Herat',
        ),
        const SizedBox(
          height: 10,
        ),
        ...List.generate(2, (index) {
          return const WeatherForecastItemWidget();
        }),
      ],
    );
  }
}
