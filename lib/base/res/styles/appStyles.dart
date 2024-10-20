import 'package:flutter/material.dart';

Color primary = const Color(0xff687daf);

class Appstyles {
  static Color primaryColor = primary;
  static Color bgColor = Color(0xFFeeedf2);
  static Color textColor = Color(0xFF3b3b3b);
  static Color ticketBlue = Color(0xFF526799);
  static Color ticketOrange = Color(0xFFF37B67);

  static TextStyle textStyle = TextStyle(
      fontSize: 16, fontWeight: FontWeight.w500, color: Appstyles.textColor);

  static TextStyle headline1 = TextStyle(
      fontSize: 26, fontWeight: FontWeight.bold, color: Appstyles.textColor);

  static TextStyle headline2 =
      TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: textColor);

  static TextStyle headline3 =
      const TextStyle(fontSize: 17, fontWeight: FontWeight.w500);

  static TextStyle headline4 =
      const TextStyle(fontSize: 14, fontWeight: FontWeight.w500);
}
