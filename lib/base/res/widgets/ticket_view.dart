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
  final bool wholeScreen;
  final bool? isColor;
  const TicketView(
      {super.key,
      required this.ticket,
      this.wholeScreen = false,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width * 0.85,
        height: 199,
        child: Container(
            margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
            child: Column(children: [
              Container(
                padding: EdgeInsets.all(16),
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          TextstyleThird(
                            text: ticket["from"]["code"],
                            isColor: isColor,
                          ),
                          Expanded(child: Container()),
                          BigDot(
                            isColor: isColor,
                          ),
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
                                        color: isColor == null
                                            ? Colors.white
                                            : Appstyles.planeSecondColor,
                                      )))
                            ],
                          )),
                          BigDot(
                            isColor: isColor,
                          ),
                          Expanded(child: Container()),
                          TextstyleThird(
                            text: ticket["to"]["code"],
                            isColor: isColor,
                          ),
                        ],
                      ),
                      SizedBox(height: 3),
                      Row(
                        children: [
                          SizedBox(
                              width: 100,
                              child: TextStyleFourth(
                                text: ticket["from"]["name"],
                                isColor: isColor,
                              )),
                          Expanded(child: Container()),
                          TextStyleFourth(
                            text: ticket["flying_time"],
                            isColor: isColor,
                          ),
                          Expanded(child: Container()),
                          SizedBox(
                            width: 100,
                            child: TextStyleFourth(
                              text: ticket["to"]["name"],
                              isColor: isColor,
                              align: TextAlign.end,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    color: isColor == null
                        ? Appstyles.ticketBlue
                        : Appstyles.ticketColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21))),
              ),
              Container(
                color: isColor == null
                    ? Appstyles.ticketOrange
                    : Appstyles.ticketColor,
                child: Row(
                  children: [
                    BigCircle(
                      isColor: isColor,
                      isRight: false,
                    ),
                    Expanded(
                      child: AppLayoutbuilderWidget(
                        isColor: isColor,
                        randomDivider: 16,
                        width: 6,
                      ),
                    ),
                    BigCircle(
                      isColor: isColor,
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
                            topText: ticket["date"],
                            bottomText: "Date",
                            alignment: CrossAxisAlignment.start,
                          ),
                          AppColumnTextLayout(
                            topText: ticket["departure_time"],
                            bottomText: "Departure Time",
                            alignment: CrossAxisAlignment.center,
                          ),
                          AppColumnTextLayout(
                            topText: ticket["number"].toString(),
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
                    color: isColor == null
                        ? Appstyles.ticketOrange
                        : Appstyles.ticketColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                        bottomRight:
                            Radius.circular(isColor == null ? 21 : 0))),
              )
            ])));
  }
}
