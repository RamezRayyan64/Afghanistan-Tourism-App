import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TouristicCityAboutDetailTextWidget extends StatefulWidget {
  TouristicCityAboutDetailTextWidget({
    super.key,
    required this.text,
    required this.maxLines,
  });

  final String text;
  int maxLines;

  @override
  State<TouristicCityAboutDetailTextWidget> createState() =>
      _TouristicCityAboutDetailTextWidgetState();
}

class _TouristicCityAboutDetailTextWidgetState
    extends State<TouristicCityAboutDetailTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.text,
            textAlign: TextAlign.justify,
            maxLines: widget.maxLines,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .color!
                      .withAlpha(150),
                ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.5),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  widget.maxLines == 5
                      ? widget.maxLines = 100
                      : widget.maxLines = 5;
                });
              },
              child: Text(
                widget.maxLines == 5 ? 'Show more' : 'Show less',
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
