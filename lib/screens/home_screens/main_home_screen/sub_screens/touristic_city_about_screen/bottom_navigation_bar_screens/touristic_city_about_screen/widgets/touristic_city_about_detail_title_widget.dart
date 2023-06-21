import 'package:flutter/material.dart';

class TouristicCityAboutDetailTitleWidget extends StatelessWidget {
  const TouristicCityAboutDetailTitleWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 7.5,
          )
        ],
      ),
    );
  }
}
