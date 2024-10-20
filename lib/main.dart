import 'package:flutter/material.dart';
import 'package:flyx/base/bottom_nav_bar.dart';

//2:05
//3:00
//3:23
//4:00
//4:58
//5:50
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: BottomNavBar());
  }
}
