import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flyx/base/res/styles/appStyles.dart';
import 'package:flyx/base/res/widgets/ticket_view.dart';
import 'package:flyx/base/screens/search/widgets/app_ticket_tabs.dart';
import 'package:flyx/base/utils/all_json.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appstyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            "Tickets",
            style: Appstyles.headline1,
          ),
          const SizedBox(
            height: 20,
          ),
          AppTicketTabs(
            fristTab: "Upcoming",
            secondTab: "Previous",
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              color: Colors.red,
              padding: EdgeInsets.only(left: 16),
              child: TicketView(
                ticket: ticketList[0],
                isColor: true,
              ))
        ],
      ),
    );
  }
}
