import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:afghanistan_tourism_app/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomElevatedButtonWidget extends StatelessWidget {
  const CustomElevatedButtonWidget({
    super.key,
    required this.onPressed,
    required this.text,
  });

  final Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: ElevatedButton(
          onPressed: onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: FutureBuilder(
              future: AdaptiveTheme.getThemeMode(),
              builder: (context, snapshot) {
                return Text(
                  text,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: MediaQuery.of(context).platformBrightness ==
                                Brightness.dark
                            ? kTextColorDark
                            : Colors.white,
                      ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
