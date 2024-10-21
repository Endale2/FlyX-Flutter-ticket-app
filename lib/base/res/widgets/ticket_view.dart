import 'package:flutter/material.dart';
import 'package:flyx/base/res/styles/appStyles.dart';
import 'package:flyx/base/res/widgets/app_column_text_layout.dart';
import 'package:flyx/base/res/widgets/app_layoutbuilder_widget.dart';
import 'package:flyx/base/res/widgets/big_circle.dart';
import 'package:flyx/base/res/widgets/big_dot.dart';
import 'package:flyx/base/res/widgets/textStyle_fourth.dart';
import 'package:flyx/base/res/widgets/textStyle_third.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({super.key, required this.ticket});

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
                          TextstyleThird(text: ticket["from"]["code"]),
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
                          TextstyleThird(text: ticket["to"]["code"]),
                        ],
                      ),
                      SizedBox(height: 3),
                      Row(
                        children: [
                          SizedBox(
                              width: 100,
                              child: TextStyleFourth(
                                text: ticket["from"]["name"],
                              )),
                          Expanded(child: Container()),
                          TextStyleFourth(text: ticket["flying_time"]),
                          Expanded(child: Container()),
                          SizedBox(
                            width: 100,
                            child: TextStyleFourth(
                              text: ticket["to"]["name"],
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
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnTextLayout(
                            topText: "20 MAY",
                            bottomText: "Date",
                            alignment: CrossAxisAlignment.start,
                          ),
                          AppColumnTextLayout(
                            topText: tiket["departure_time"],
                            bottomText: "Departure Time",
                            alignment: CrossAxisAlignment.center,
                          ),
                          AppColumnTextLayout(
                            topText: "30",
                            bottomText: "Number",
                            alignment: CrossAxisAlignment.end,
                          )
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
