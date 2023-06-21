import 'package:flutter/material.dart';

class TouristicCityAboutImageWidget extends StatelessWidget {
  const TouristicCityAboutImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: const Image(
          image: AssetImage('assets/cities/herat.jpg'),
        ),
      ),
    );
  }
}
