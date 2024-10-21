import 'package:flutter/material.dart';
import 'package:flyx/base/res/styles/appStyles.dart';
import 'package:flyx/base/screens/all_tickets.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText(
      {super.key, required this.bigText, required this.smallText});

  final String smallText;
  final String bigText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: Appstyles.headline2),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, "all_tickets");
          },
          child: Text(smallText,
              style:
                  Appstyles.textStyle.copyWith(color: Appstyles.primaryColor)),
        )
      ],
    );
  }
}
