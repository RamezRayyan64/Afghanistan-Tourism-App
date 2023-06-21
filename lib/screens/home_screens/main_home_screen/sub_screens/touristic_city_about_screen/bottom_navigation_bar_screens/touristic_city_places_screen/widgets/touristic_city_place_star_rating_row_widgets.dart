import 'package:flutter/material.dart';

class TouristicCityPlaceStarRatingRowWidgets extends StatelessWidget {
  const TouristicCityPlaceStarRatingRowWidgets({
    super.key,
    required this.placeRatingStarDescription,
  });

  final String placeRatingStarDescription;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star_rounded),
        const SizedBox(
          width: 5,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 75),
          child: Text(
            placeRatingStarDescription,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.normal,
                ),
          ),
        ),
      ],
    );
  }
}
