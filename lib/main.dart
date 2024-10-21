import 'package:flutter/material.dart';
import 'package:flyx/base/bottom_nav_bar.dart';
import 'package:flyx/base/screens/all_tickets.dart';

//2:05
//3:00
//3:23
//4:00
//4:58
//5:50
//6:56
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {"all_tickets": (context) => AllTickets()},
        debugShowCheckedModeBanner: false,
        home: BottomNavBar());
  }
}
