import "package:flutter/material.dart";
import "package:birel_mobil/consts/Colors.dart" as colors;

class EventMonthCard extends StatelessWidget {
  String month;

  EventMonthCard(this.month);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:12.0),
      child: Container(
        height: 52.0,
        width: 100.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: colors.COLOR_ACCENT,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(26),
            bottomRight: Radius.circular(26),
          )
        ),
        child: Text(
          this.month, 
          style: TextStyle(
            color: colors.ACCENT_TEXT_GRAY, 
            fontSize: 18.0
          ),
        ),
      ),
    );

  }
}
