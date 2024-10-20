import 'package:flutter/material.dart';
import 'package:flyx/base/res/widgets/textStyle_fourth.dart';
import 'package:flyx/base/res/widgets/textStyle_third.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  const AppColumnTextLayout(
      {super.key, required this.topText, required this.bottomText});

  @override
  Widget build(BuildContext context) {
    return Column(
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
