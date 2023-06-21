import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/drawer_screens/contact_us_screen/widgets/contact_us_text_fields_and_button_column_widget.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/drawer_screens/widgets/top_screen_text_widget.dart';
import 'package:flutter/material.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  String fullName = '';
  String message = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopScreenTextWidget(
          text: 'Contact Us',
        ),
        ContactUsTextFieldsAndButtonColumnWidget(
          onChangedFullName: (value) {
            fullName = value;
          },
          onChangedMessage: (value) {
            message = value;
          },
          onPressedSendMessage: () {},
        )
      ],
    );
  }
}
