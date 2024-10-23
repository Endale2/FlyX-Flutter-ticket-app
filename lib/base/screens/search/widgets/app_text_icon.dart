import 'package:flutter/material.dart';
import 'package:flyx/base/res/styles/appStyles.dart';

class AppTextIcon extends StatelessWidget {
  const AppTextIcon({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Icon(
            icon,
            color: Appstyles.planeColor,
          ),
          SizedBox(
            width: 10,
          ),
          Text(text, style: Appstyles.textStyle)
        ],
      ),
    );
  }
}
