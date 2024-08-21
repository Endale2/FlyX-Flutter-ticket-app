import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("My Tickets"))),
      body: Center(
        child: Text("hello flutter"),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_home_add_regular),
            label: "home",
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_add_filled)),
        BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
            label: "Search",
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled)),
        BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            label: "Ticket",
            activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled)),
        BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_person_accounts_regular),
            label: "Profile",
            activeIcon:
                Icon(FluentSystemIcons.ic_fluent_person_accounts_regular)),
      ]),
    );
  }
}
