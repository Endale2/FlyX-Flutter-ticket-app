import 'package:flutter/material.dart';
import 'package:flyx/base/res/styles/appStyles.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText(
      {super.key,
      required this.bigText,
      required this.smallText,
      required this.func});

  final String smallText;
  final String bigText;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: Appstyles.headline2),
        InkWell(
          onTap: func,
          child: Text(smallText,
              style:
                  Appstyles.textStyle.copyWith(color: Appstyles.primaryColor)),
        )
      ],
    );
  }
}
