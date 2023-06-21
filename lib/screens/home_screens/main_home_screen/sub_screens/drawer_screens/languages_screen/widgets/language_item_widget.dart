import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LanguageItemWidget extends StatelessWidget {
  const LanguageItemWidget({
    super.key,
    required this.image,
    required this.name,
    required this.index,
    required this.selectedIndex,
  });

  final String image;
  final String name;
  final int index;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setContextLocale(context, index);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Card(
          color: Theme.of(context).colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(image),
              ),
              title: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  name,
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
              trailing: index == selectedIndex
                  ? const Icon(
                      Icons.check_rounded,
                    )
                  : const SizedBox(),
            ),
          ),
        ),
      ),
    );
  }

  void setContextLocale(BuildContext context, index) {
    switch (index) {
      case 0:
        context.setLocale(const Locale('fa'));
        break;
      case 1:
        context.setLocale(const Locale('ps'));
        break;
      case 2:
        context.setLocale(const Locale('en'));
        break;
    }
    // Navigator.pushNamedAndRemoveUntil(
    //     context, SplashScreen.id, (route) => false);
  }
}
