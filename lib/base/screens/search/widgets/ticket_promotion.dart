import 'package:flutter/material.dart';
import 'package:flyx/base/res/media.dart';
import 'package:flyx/base/res/styles/appStyles.dart';

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          width: size.width * .42,
          height: 445,
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
                    blurRadius: 1, color: Colors.grey.shade200, spreadRadius: 2)
              ]),
        ),
        Column(
          children: [
            Stack(children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                height: 220,
                width: size.width * .44,
                decoration: BoxDecoration(
                    color: Color(0xFF3AB8B8),
                    borderRadius: BorderRadius.circular(18)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Discount\nFor Survey",
                      style: Appstyles.headline2.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Take a survey about our services and get discount",
                      style: Appstyles.headline2.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border:
                          Border.all(width: 18, color: Appstyles.circleColor)),
                ),
              )
            ]),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              width: size.width * .44,
              height: 210,
              decoration: BoxDecoration(
                  color: const Color(0xFFEC6545),
                  borderRadius: BorderRadius.circular(18)),
              child: Column(
                children: [
                  Text("Take Love",
                      style: Appstyles.headline2.copyWith(color: Colors.white)),
                  RichText(
                    text: TextSpan(
                      children: [
                        WidgetSpan(
                          child: Text(
                            '❤️',
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                        WidgetSpan(
                          child: Text(
                            '❤️',
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                        WidgetSpan(
                          child: Text(
                            '❤️',
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
