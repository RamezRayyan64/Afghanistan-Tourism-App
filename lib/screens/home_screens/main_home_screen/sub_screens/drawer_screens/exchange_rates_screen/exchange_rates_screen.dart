import 'package:afghanistan_tourism_app/packages/dio/exchange_rate_api/exchange_rate_api.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/drawer_screens/widgets/top_screen_text_widget.dart';
import 'package:flutter/material.dart';

class ExchangeRatesScreen extends StatefulWidget {
  const ExchangeRatesScreen({super.key});

  @override
  State<ExchangeRatesScreen> createState() => _ExchangeRatesScreenState();
}

class _ExchangeRatesScreenState extends State<ExchangeRatesScreen> {
  bool isLoading = true, isConnectionTimeout = false;
  String afn = '', eur = '';

  @override
  void initState() {
    super.initState();
    getRatesFromHost((ratesMap) {
      eur = ratesMap.getEUR().toString();
      afn = ratesMap.getAFN().toString();
      setState(() {
        isLoading = false;
      });
    }, (error) {
      if (error == 'connection_timeout') {
        setState(() {
          isConnectionTimeout = true;
        });
      }
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const TopScreenTextWidget(
            text: 'Exchange Rates',
          ),
          const SizedBox(
            height: 10,
          ),
          isLoading
              ? const CircularProgressIndicator()
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 4,
                            child: ExchangeRatesTextInputColumnWidget(
                              eurRate: eur,
                              afnRate: afn,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Expanded(
                            flex: 1,
                            child: ExchangeRatesFlagsColumnWidget(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
        ],
      ),
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
              backgroundImage: AssetImage('assets/flags/flag_eur.png'),
            ),
            SizedBox(
              height: 20,
            ),
            RotatedBox(
              quarterTurns: 45,
              child: Icon(Icons.arrow_back),
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
    required this.afnRate,
    required this.eurRate,
  });

  final String afnRate;
  final String eurRate;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Europe (EUR)',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        ExchangeRateCustomTextFieldWidget(
          isEnabled: false,
          hintText: eurRate,
        ),
        Container(
          height: 1,
          color: Colors.white,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Afghani (AFN)',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        ExchangeRateCustomTextFieldWidget(
          isEnabled: false,
          hintText: afnRate,
        ),
      ],
    );
  }
}

class ExchangeRateCustomTextFieldWidget extends StatelessWidget {
  const ExchangeRateCustomTextFieldWidget({
    super.key,
    required this.isEnabled,
    required this.hintText,
  });

  final bool isEnabled;
  final String hintText;

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
          hintText: hintText,
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
