import 'package:flutter/material.dart';
import 'package:flyx/base/bottom_nav_bar.dart';

//2:05
//3:00
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: BottomNavBar());
  }
}
