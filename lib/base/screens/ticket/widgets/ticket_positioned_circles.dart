import 'package:flutter/material.dart';
import 'package:flyx/base/res/styles/appStyles.dart';

class TicketPositionedCircles extends StatelessWidget {
  final bool? pos;
  const TicketPositionedCircles({super.key, this.pos});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: pos == true ? 20 : null,
        right: pos == true ? null : 20,
        top: 260,
        child: Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: Appstyles.textColor)),
          child: CircleAvatar(
            maxRadius: 4,
            backgroundColor: Appstyles.textColor,
          ),
        ));
  }
}
