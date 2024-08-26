import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flyx/base/res/media.dart';
import 'package:flyx/base/res/styles/app_style.dart';
import 'package:flyx/base/widgets/app_double_text.dart';
import 'package:flyx/base/widgets/tikect_view.dart';

//dbs tech 3:38
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyles.bgColor,
        body: ListView(
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hello!", style: AppStyles.headLine3),
                            Text("Book Tickets", style: AppStyles.headLine1),
                          ],
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(AppMedia.logo))),
                        )
                      ]),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFF4F6Fd)),
                      child: Row(children: const [
                        Icon(FluentSystemIcons.ic_fluent_search_regular,
                            color: const Color(0xFFBFC205)),
                        Text("Search ...")
                      ])),
                  SizedBox(
                    height: 40,
                  ),
                  const AppDoubleText(
                      bigText: "Upcoming flight", smallText: "view all"),
                  const TikectView()
                ],
              ),
            ),
          ],
        ));
  }
}
