import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flyx/base/res/media.dart';
import 'package:flyx/base/res/styles/appStyles.dart';
import 'package:flyx/base/res/widgets/app_double_text.dart';
import 'package:flyx/base/res/widgets/ticket_view.dart';
import 'package:flyx/base/screens/home/hotels.dart';
import 'package:flyx/base/utils/all_json.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Appstyles.bgColor,
        body: ListView(
          children: [
            SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Good Morning!", style: Appstyles.headline3),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Book Tickets", style: Appstyles.headline1)
                        ],
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          image:
                              DecorationImage(image: AssetImage(AppMedia.logo)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFF4F6FD)),
                    child: Row(
                      children: [
                        Icon(FluentSystemIcons.ic_fluent_search_regular,
                            color: Color(0xFFBFC205)),
                        Text("Search...")
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  AppDoubleText(
                      bigText: "Upcoming Flights",
                      smallText: "View all",
                      func: () => Navigator.pushNamed(context, "all_tickets")),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: ticketList
                            .map((singleTicket) => TicketView(
                                  ticket: singleTicket,
                                ))
                            .toList(),
                      )),
                  SizedBox(
                    height: 40,
                  ),
                  AppDoubleText(
                    bigText: "Hotels",
                    smallText: "View all",
                    func: () => Navigator.pushNamed(context, "all_hotels"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: hotelList
                            .take(2)
                            .map((singlehotel) => Hotel(
                                  hotel: singlehotel,
                                ))
                            .toList(),
                      )),
                ],
              ),
            ),
          ],
        ));
  }
}
