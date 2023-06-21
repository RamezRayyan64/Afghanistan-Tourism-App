import 'package:afghanistan_tourism_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBarWidget extends StatelessWidget {
  const CustomBottomNavigationBarWidget({
    super.key,
    required this.currentBNBIndex,
    required this.onTap,
  });

  final int currentBNBIndex;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentBNBIndex,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.info_rounded),
          label: LocaleKeys.about.tr(),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.place_rounded),
          label: LocaleKeys.places.tr(),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.factory_rounded),
          label: LocaleKeys.industries.tr(),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.festival_rounded),
          label: LocaleKeys.festivals.tr(),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.food_bank_rounded),
          label: LocaleKeys.local_foods.tr(),
        ),
      ],
    );
  }
}
