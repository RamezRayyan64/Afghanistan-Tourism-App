import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    required this.maxLine,
    required this.onChanged,
    required this.hintText,
    required this.labelText,
  });

  final int maxLine;
  final Function(String) onChanged;
  final String hintText;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.name,
      maxLines: maxLine,
      onChanged: onChanged,
      style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.normal,
          ),
      textAlignVertical: TextAlignVertical.bottom,
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .color!
                  .withOpacity(0.75),
              fontWeight: FontWeight.normal,
            ),
        label: Text(
          labelText,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.normal,
              ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color:
                Theme.of(context).textTheme.titleLarge!.color!.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).textTheme.titleLarge!.color!,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
