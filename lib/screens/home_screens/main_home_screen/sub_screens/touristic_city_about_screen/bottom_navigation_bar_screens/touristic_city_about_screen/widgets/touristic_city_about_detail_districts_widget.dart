import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';

class TouristicCityAboutDetailDistrictsWidget extends StatelessWidget {
  const TouristicCityAboutDetailDistrictsWidget({
    super.key,
    required this.districtsList,
  });

  final List<Map<String, dynamic>>? districtsList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: List.generate(
              districtsList!.length,
              (index) {
                return BouncingWidget(
                  onPressed: () {},
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 10,
                        right: index == districtsList!.length - 1 ? 10 : 0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                              height: 100,
                              image: AssetImage(
                                districtsList![index]['image'],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'District',
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      districtsList![index]['name'],
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Population',
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      '${districtsList![index]['population']}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
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
