import 'package:flutter/material.dart';
import 'package:flyx/base/res/media.dart';
import 'package:flyx/base/res/styles/appStyles.dart';
import 'package:flyx/base/res/widgets/app_column_text_layout.dart';
import 'package:flyx/base/res/widgets/app_layoutbuilder_widget.dart';
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
          const SizedBox(
            height: 1,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            color: Appstyles.ticketColor,
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      isColor: true,
                      topText: "Flutter DB",
                      bottomText: "Passenger",
                      alignment: CrossAxisAlignment.start,
                    ),
                    AppColumnTextLayout(
                      isColor: true,
                      topText: "5221 65476",
                      bottomText: "Passport",
                      alignment: CrossAxisAlignment.end,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const AppLayoutbuilderWidget(
                  randomDivider: 15,
                  width: 5,
                  isColor: false,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      isColor: true,
                      topText: "4656 634878896476",
                      bottomText: "Number of E-ticket",
                      alignment: CrossAxisAlignment.start,
                    ),
                    AppColumnTextLayout(
                      isColor: true,
                      topText: "B45266",
                      bottomText: "Booking Code",
                      alignment: CrossAxisAlignment.end,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const AppLayoutbuilderWidget(
                  randomDivider: 15,
                  width: 5,
                  isColor: false,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              AppMedia.visaCard,
                              scale: 8,
                            ),
                            Text(
                              "*** 2462",
                              style: Appstyles.headline3,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text("Payment Method", style: Appstyles.headline4)
                      ],
                    ),
                    AppColumnTextLayout(
                      isColor: true,
                      topText: "\$249.99",
                      bottomText: "Price",
                      alignment: CrossAxisAlignment.end,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Center(child: Text("Hello Flutter")),
              ),
            ),
            decoration: BoxDecoration(
                color: Appstyles.ticketColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21))),
          )
        ],
      ),
    );
  }
}
