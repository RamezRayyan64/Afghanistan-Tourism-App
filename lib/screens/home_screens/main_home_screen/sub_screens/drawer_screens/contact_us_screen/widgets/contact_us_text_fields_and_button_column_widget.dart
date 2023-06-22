import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/drawer_screens/widgets/custom_elevated_button_widget.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/drawer_screens/widgets/custom_text_field_widget.dart';
import 'package:flutter/material.dart';

class ContactUsTextFieldsAndButtonColumnWidget extends StatelessWidget {
  const ContactUsTextFieldsAndButtonColumnWidget({
    super.key,
    required this.onChangedFullName,
    required this.onChangedMessage,
    required this.onPressedSendMessage,
  });

  final Function(String) onChangedFullName;
  final Function(String) onChangedMessage;
  final Function() onPressedSendMessage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          CustomTextFieldWidget(
            maxLine: 1,
            onChanged: onChangedFullName,
            hintText: 'Full Name',
            labelText: 'Full Name',
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFieldWidget(
            maxLine: 5,
            onChanged: onChangedMessage,
            hintText: 'Message',
            labelText: 'Message',
          ),
          const SizedBox(
            height: 20,
          ),
          CustomElevatedButtonWidget(
            onPressed: onPressedSendMessage,
            text: 'Send Message',
          ),
        ],
      ),
    );
  }
}
