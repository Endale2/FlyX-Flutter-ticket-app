import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flyx/base/res/media.dart';
import 'package:flyx/base/res/styles/appStyles.dart';

class Hotel extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const Hotel({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        padding: EdgeInsets.all(8.0),
        height: 350,
        width: size.width * 0.6,
        margin: EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
            color: Appstyles.primaryColor,
            borderRadius: BorderRadius.circular(18)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                  color: Appstyles.primaryColor,
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/${hotel["image"]}"))),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Open Space",
                style: Appstyles.headline1.copyWith(color: Appstyles.kakiColor),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "London",
                style: Appstyles.headline3.copyWith(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "\$25/Night",
                style: Appstyles.headline1.copyWith(color: Appstyles.kakiColor),
              ),
            )
          ],
        ));
  }
}