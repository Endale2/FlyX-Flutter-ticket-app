import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs(
      {super.key, required this.fristTab, required this.secondTab});

  final String fristTab;
  final String secondTab;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Color(0xFFF6f4fd)),
      child: Row(
        children: [
          AppTabs(tabText: fristTab),
          AppTabs(
            tabText: secondTab,
            tabBorder: true,
            tabColor: true,
          )
        ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  const AppTabs(
      {super.key,
      this.tabText = "",
      this.tabBorder = false,
      this.tabColor = false});

  final String tabText;
  final bool tabBorder;
  final bool tabColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.44,
      padding: EdgeInsets.symmetric(vertical: 7),
      child: Center(child: Text(tabText)),
      decoration: BoxDecoration(
          color: tabColor == false ? Colors.white : Colors.transparent,
          borderRadius: tabBorder == false
              ? BorderRadius.horizontal(left: Radius.circular(50))
              : BorderRadius.horizontal(right: Radius.circular(50))),
    );
  }
}
