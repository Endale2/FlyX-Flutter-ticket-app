import 'package:flutter/material.dart';
import 'package:flyx/base/res/styles/appStyles.dart';
import 'package:flyx/base/res/widgets/app_column_text_layout.dart';
import 'package:flyx/base/res/widgets/app_layoutbuilder_widget.dart';
import 'package:flyx/base/res/widgets/big_circle.dart';
import 'package:flyx/base/res/widgets/big_dot.dart';
import 'package:flyx/base/res/widgets/textStyle_fourth.dart';
import 'package:flyx/base/res/widgets/textStyle_third.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width * 0.85,
        height: 199,
        child: Container(
            margin: EdgeInsets.only(right: 16),
            child: Column(children: [
              Container(
                padding: EdgeInsets.all(16),
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          TextstyleThird(text: "NYC"),
                          Expanded(child: Container()),
                          BigDot(),
                          Expanded(
                              child: Stack(
                            children: [
                              SizedBox(
                                  height: 24,
                                  child: AppLayoutbuilderWidget(
                                    randomDivider: 6,
                                  )),
                              Center(
                                  child: Transform.rotate(
                                      angle: 1.5,
                                      child: Icon(
                                        Icons.local_airport_rounded,
                                        color: Colors.white,
                                      )))
                            ],
                          )),
                          BigDot(),
                          Expanded(child: Container()),
                          TextstyleThird(text: "LDN"),
                        ],
                      ),
                      SizedBox(height: 3),
                      Row(
                        children: [
                          SizedBox(
                              width: 100,
                              child: TextStyleFourth(
                                text: "NewYork",
                              )),
                          Expanded(child: Container()),
                          TextStyleFourth(text: "8H 30M"),
                          Expanded(child: Container()),
                          SizedBox(
                            width: 100,
                            child: TextStyleFourth(
                              text: "London",
                              align: TextAlign.end,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    color: Appstyles.ticketBlue,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21))),
              ),
              Container(
                color: Appstyles.ticketOrange,
                child: Row(
                  children: [
                    BigCircle(
                      isRight: false,
                    ),
                    Expanded(
                      child: AppLayoutbuilderWidget(
                        randomDivider: 16,
                        width: 6,
                      ),
                    ),
                    BigCircle(
                      isRight: true,
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Center(
                  child: Column(
                    children: const [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnTextLayout(
                              topText: "20 MAY", bottomText: "Date"),
                          AppColumnTextLayout(
                              topText: "09:30", bottomText: "Departure Time"),
                          AppColumnTextLayout(
                              topText: "30", bottomText: "Number")
                        ],
                      ),
                      SizedBox(height: 3),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    color: Appstyles.ticketOrange,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21))),
              )
            ])));
  }
}
