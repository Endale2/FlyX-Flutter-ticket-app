import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flyx/base/res/media.dart';
import 'package:flyx/base/res/styles/appStyles.dart';
import 'package:flyx/base/res/widgets/app_double_text.dart';
import 'package:flyx/base/screens/search/widgets/app_text_icon.dart';
import 'package:flyx/base/screens/search/widgets/app_ticket_tabs.dart';
import 'package:flyx/base/screens/search/widgets/find_ticket.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Appstyles.bgColor,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "What are\n you looking for?",
              style: Appstyles.headline1.copyWith(fontSize: 35),
            ),
            SizedBox(
              height: 20,
            ),
            AppTicketTabs(),
            SizedBox(
              height: 25,
            ),
            AppTextIcon(
              icon: Icons.flight_takeoff_rounded,
              text: "Departure",
            ),
            SizedBox(
              height: 20,
            ),
            AppTextIcon(
              icon: Icons.flight_land_rounded,
              text: "Arrival",
            ),
            SizedBox(
              height: 25,
            ),
            FindTicket(),
            SizedBox(
              height: 40,
            ),
            AppDoubleText(
              bigText: "Upcoming Flights",
              smallText: "View all",
              func: () => Navigator.pushNamed(context, "all_tickets"),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  width: size.width * .42,
                  child: Column(
                    children: [
                      Container(
                        height: 190,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(AppMedia.hotel_room))),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "20% discount in the early booking of this flight. Don't miss ",
                        style: Appstyles.headline2,
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 1,
                            color: Colors.grey.shade200,
                            spreadRadius: 2)
                      ]),
                )
              ],
            )
          ],
        ));
  }
}
