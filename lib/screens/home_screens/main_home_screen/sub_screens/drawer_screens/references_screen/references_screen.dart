import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/drawer_screens/references_screen/widgets/reference_item_widget.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/drawer_screens/widgets/top_screen_text_widget.dart';
import 'package:flutter/material.dart';

class ReferencesScreen extends StatelessWidget {
  const ReferencesScreen({super.key, required this.referencesItemsList});

  final List<Map<String, dynamic>> referencesItemsList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopScreenTextWidget(
          text: 'References',
        ),
        ...List.generate(referencesItemsList.length, (index) {
          return ReferenceItemWidget(
            title: referencesItemsList[index]['title'],
            subTitle: referencesItemsList[index]['sub_title'],
          );
        })
      ],
    );
  }
}
