import 'package:flutter/material.dart';
import 'package:flyx/base/res/styles/appStyles.dart';
import 'package:flyx/base/res/widgets/app_column_text_layout.dart';
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
              padding: EdgeInsets.only(left: 16),
              child: TicketView(
                ticket: ticketList[0],
                isColor: true,
              )),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            color: Appstyles.ticketColor,
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const AppColumnTextLayout(
                      isColor: true,
                      topText: "Flutter DB",
                      bottomText: "Passenger",
                      alignment: CrossAxisAlignment.start,
                    ),
                    const AppColumnTextLayout(
                      isColor: true,
                      topText: "5221 65476",
                      bottomText: "Passport",
                      alignment: CrossAxisAlignment.end,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
