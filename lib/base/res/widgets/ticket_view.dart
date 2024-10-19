import 'package:flutter/material.dart';
import 'package:flyx/base/res/styles/appStyles.dart';
import 'package:flyx/base/res/widgets/app_layoutbuilder_widget.dart';
import 'package:flyx/base/res/widgets/big_dot.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width * 0.85,
        height: 179,
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
                          Text(
                            "NYC",
                            style: Appstyles.headline3
                                .copyWith(color: Colors.white),
                          ),
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
                          Text(
                            "LDN",
                            style: Appstyles.headline3
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(height: 3),
                      Row(
                        children: [
                          Text(
                            "New-York",
                            style: Appstyles.headline3
                                .copyWith(color: Colors.white),
                          ),
                          Expanded(child: Container()),
                          Text(
                            "8H 30M",
                            style: Appstyles.headline3
                                .copyWith(color: Colors.white),
                          ),
                          Expanded(child: Container()),
                          Text(
                            "London",
                            style: Appstyles.headline3
                                .copyWith(color: Colors.white),
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
              )
            ])));
  }
}
