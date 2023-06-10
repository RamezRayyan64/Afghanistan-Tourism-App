import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/drawer_screens/widgets/custom_elevated_button_widget.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/drawer_screens/widgets/top_screen_text_widget.dart';
import 'package:flutter/material.dart';

class ExchangeRatesScreen extends StatefulWidget {
  const ExchangeRatesScreen({super.key});

  @override
  State<ExchangeRatesScreen> createState() => _ExchangeRatesScreenState();
}

class _ExchangeRatesScreenState extends State<ExchangeRatesScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopScreenTextWidget(
          text: 'Exchange Rates',
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(
                    flex: 4,
                    child: ExchangeRatesTextInputColumnWidget(),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: ExchangeRatesFlagsColumnWidget(),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CustomElevatedButtonWidget(
                onPressed: () {},
                text: 'Convert',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ExchangeRatesFlagsColumnWidget extends StatelessWidget {
  const ExchangeRatesFlagsColumnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: const [
            CircleAvatar(
              backgroundImage: AssetImage('assets/flags/flag_afg.png'),
            ),
            SizedBox(
              height: 20,
            ),
            RotatedBox(
              quarterTurns: 45,
              child: Icon(Icons.compare_arrows),
            ),
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/flags/flag_afg.png'),
            ),
          ],
        ),
      ),
    );
  }
}

class ExchangeRatesTextInputColumnWidget extends StatelessWidget {
  const ExchangeRatesTextInputColumnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Afghani (Af)',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const ExchangeRateCustomTextFieldWidget(
          isEnabled: true,
        ),
        Container(
          height: 1,
          color: Colors.white,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Afghani (Af)',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const ExchangeRateCustomTextFieldWidget(
          isEnabled: false,
        ),
      ],
    );
  }
}

class ExchangeRateCustomTextFieldWidget extends StatelessWidget {
  const ExchangeRateCustomTextFieldWidget({
    super.key,
    required this.isEnabled,
  });

  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextField(
        enabled: isEnabled,
        keyboardType: TextInputType.number,
        onChanged: (value) {},
        style: Theme.of(context).textTheme.headlineMedium!.copyWith(
              fontWeight: FontWeight.normal,
            ),
        textAlignVertical: TextAlignVertical.bottom,
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          hintText: '0',
          hintStyle: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .color!
                    .withOpacity(0.75),
                fontWeight: FontWeight.normal,
              ),
          enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),
          disabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),
          focusedBorder: const OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
