import 'package:flutter/material.dart';

class TouristicCityPlaceNameLocationWidgets extends StatelessWidget {
  const TouristicCityPlaceNameLocationWidgets({
    super.key,
    required this.placeName,
    required this.placeLocation,
  });

  final String placeName;
  final String placeLocation;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          placeName,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            const Icon(Icons.location_on_rounded),
            const SizedBox(
              width: 5,
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 225),
              child: Text(
                placeLocation,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
