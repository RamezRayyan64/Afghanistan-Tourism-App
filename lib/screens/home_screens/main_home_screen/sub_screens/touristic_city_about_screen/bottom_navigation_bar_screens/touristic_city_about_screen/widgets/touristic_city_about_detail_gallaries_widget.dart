import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';

class TouristicCityAboutDetailGallariesWidget extends StatelessWidget {
  const TouristicCityAboutDetailGallariesWidget({
    super.key,
    required this.galleriesList,
  });

  final List<String>? galleriesList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: List.generate(
              galleriesList!.length,
              (index) {
                return BouncingWidget(
                  onPressed: () {},
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 15,
                        right: index == galleriesList!.length - 1 ? 15 : 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        height: 125,
                        image: AssetImage(
                          galleriesList![index],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
