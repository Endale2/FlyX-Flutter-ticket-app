import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flyx/base/res/styles/appStyles.dart';
import 'package:flyx/base/screens/search/widgets/app_ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            AppTicketTabs()
          ],
        ));
  }
}
