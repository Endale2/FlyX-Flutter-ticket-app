import 'package:flutter/material.dart';
import 'package:flyx/base/res/styles/appStyles.dart';

class TextstyleThird extends StatelessWidget {
  final String text;
  final bool? isColor;
  const TextstyleThird({super.key, required this.text, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: isColor == null
          ? Appstyles.headline3.copyWith(color: Colors.white)
          : Appstyles.headline3,
    );
  }
}
