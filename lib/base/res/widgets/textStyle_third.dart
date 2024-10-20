import 'package:flutter/material.dart';
import 'package:flyx/base/res/styles/appStyles.dart';

class TextstyleThird extends StatelessWidget {
  final String text;
  const TextstyleThird({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Appstyles.headline3.copyWith(color: Colors.white),
    );
  }
}
