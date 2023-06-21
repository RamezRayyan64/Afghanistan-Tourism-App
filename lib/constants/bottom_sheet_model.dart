import 'package:afghanistan_tourism_app/widgets/bottom_sheet_model_widgets/popover.dart';
import 'package:flutter/material.dart';

void showSelectBottomSheetModel(
  BuildContext context,
  String title,
  List selectableItemsList,
  Function(String, int) onPressedButton,
) {
  showModalBottomSheet(
    context: context,
    builder: (builderContext) {
      return Popover(
        child: Column(
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 10),
            ...List.generate(
              selectableItemsList.length,
              (index) {
                return SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      onPressedButton(selectableItemsList[index], index);
                    },
                    child: Text(
                      selectableItemsList[index],
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .color!
                                .withOpacity(0.75),
                          ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 10),
          ],
        ),
      );
    },
  );
}
