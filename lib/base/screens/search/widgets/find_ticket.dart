import 'package:flutter/material.dart';
import 'package:flyx/base/res/styles/appStyles.dart';

class FindTicket extends StatelessWidget {
  const FindTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18, horizontal: 18),
      child: Center(
        child: Text(
          "Find Tickets",
          style: Appstyles.textStyle.copyWith(color: Colors.white),
        ),
      ),
      decoration: BoxDecoration(
          color: Appstyles.findTicketColor,
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
