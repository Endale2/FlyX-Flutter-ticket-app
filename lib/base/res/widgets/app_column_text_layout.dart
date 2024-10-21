import 'package:flutter/material.dart';
import 'package:flyx/base/res/widgets/textStyle_fourth.dart';
import 'package:flyx/base/res/widgets/textStyle_third.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  const AppColumnTextLayout(
      {super.key,
      required this.topText,
      required this.bottomText,
      required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TextstyleThird(text: topText),
        SizedBox(height: 5),
        TextStyleFourth(
          text: bottomText,
        ),
      ],
    );
  }
}
