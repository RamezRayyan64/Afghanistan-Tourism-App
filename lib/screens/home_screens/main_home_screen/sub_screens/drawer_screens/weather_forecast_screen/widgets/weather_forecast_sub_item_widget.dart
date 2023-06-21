import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

class WeatherForecastSubItemWidget extends StatelessWidget {
  const WeatherForecastSubItemWidget({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(index == 0 ? 10 : 0, 0, 10, 0),
      child: FutureBuilder(
        future: AdaptiveTheme.getThemeMode(),
        builder: (context, snapshot) {
          return Card(
            color: MediaQuery.of(context).platformBrightness == Brightness.dark
                ? Theme.of(context).colorScheme.primary.withOpacity(0.25)
                : Theme.of(context).colorScheme.primary.withOpacity(0.95),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      SizedBox(
                        width: 10,
                      ),
                      Image(
                        width: 75,
                        image: AssetImage('assets/weather/sun.png'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    '9 A.M',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    '25 C',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
