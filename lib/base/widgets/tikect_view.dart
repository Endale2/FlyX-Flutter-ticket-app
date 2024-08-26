import 'package:flutter/material.dart';

class TikectView extends StatelessWidget {
  const TikectView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 179,
      child:
          Container(padding: EdgeInsets.only(right: 16), color: Colors.green),
    );
  }
}
