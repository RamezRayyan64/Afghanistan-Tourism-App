import 'package:afghanistan_tourism_app/constants/lists.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/drawer_screens/languages_screen/widgets/language_item_widget.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/drawer_screens/widgets/top_screen_text_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LanguagesScreen extends StatefulWidget {
  const LanguagesScreen({
    super.key,
  });

  @override
  State<LanguagesScreen> createState() => _LanguagesScreenState();
}

class _LanguagesScreenState extends State<LanguagesScreen> {
  int selectedLanguageIndex = 0;

  @override
  Widget build(BuildContext context) {
    getContextLocale(context);
    return Column(
      children: [
        const TopScreenTextWidget(
          text: 'Languages',
        ),
        ...List.generate(languageItemsList.length, (index) {
          return LanguageItemWidget(
            image: languageItemsList[index]['image'],
            name: languageItemsList[index]['name'],
            index: index,
            selectedIndex: selectedLanguageIndex,
          );
        })
      ],
    );
  }

  void getContextLocale(BuildContext context) {
    switch (context.locale.languageCode) {
      case 'fa':
        selectedLanguageIndex = 0;
        break;
      case 'ps':
        selectedLanguageIndex = 1;
        break;
      case 'en':
        selectedLanguageIndex = 2;
        break;
    }
  }
}
