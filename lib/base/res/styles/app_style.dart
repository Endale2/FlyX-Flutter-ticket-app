import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color bgColor = Color(0xffeeedf2);
  static Color textColor = const Color(0xFF3b3b3b);
  static TextStyle textStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: textColor);
  static TextStyle headLine1 =
      TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: textColor);
  static TextStyle headLine2 =
      TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: textColor);
  static TextStyle headLine3 =
      const TextStyle(fontSize: 17, fontWeight: FontWeight.w500);
}