import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';

class TouristicCityAboutDetailNotablePeopleWidget extends StatelessWidget {
  const TouristicCityAboutDetailNotablePeopleWidget({
    super.key,
    required this.notablePeopleList,
  });

  final List<Map<String, dynamic>>? notablePeopleList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: List.generate(
              notablePeopleList!.length,
              (index) {
                return BouncingWidget(
                  onPressed: () {},
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 10,
                        right: index == notablePeopleList!.length - 1 ? 10 : 0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 10,
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage(
                                  notablePeopleList![index]['image'],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              notablePeopleList![index]['name'],
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
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
