import 'package:flutter/material.dart';
import 'package:flyx/base/res/styles/appStyles.dart';

class TextStyleFourth extends StatelessWidget {
  final String text;
  final TextAlign align;
  final isColor;
  const TextStyleFourth(
      {super.key,
      required this.text,
      this.align = TextAlign.start,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: isColor == null
          ? Appstyles.headline4.copyWith(color: Colors.white)
          : Appstyles.headline4,
    );
  }
}
