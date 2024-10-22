import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Color(0xFFF6f4fd)),
      child: Row(
        children: [
          Container(
            width: size.width * 0.44,
            padding: EdgeInsets.symmetric(vertical: 7),
            child: const Center(child: Text("Airline Tickets")),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.horizontal(left: Radius.circular(50))),
          ),
          Container(
            width: size.width * 0.44,
            padding: EdgeInsets.symmetric(vertical: 7),
            child: const Center(child: Text("Hotels")),
            decoration: const BoxDecoration(
                color: Colors.transparent,
                borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(50))),
          )
        ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  const AppTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
