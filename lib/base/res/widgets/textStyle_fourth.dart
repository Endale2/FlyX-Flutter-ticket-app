import 'package:flutter/material.dart';
import 'package:flyx/base/res/styles/appStyles.dart';

class TextStyleFourth extends StatelessWidget {
  final String text;
  final TextAlign align;
  const TextStyleFourth(
      {super.key, required this.text, this.align = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: Appstyles.headline4.copyWith(color: Colors.white),
    );
  }
}
