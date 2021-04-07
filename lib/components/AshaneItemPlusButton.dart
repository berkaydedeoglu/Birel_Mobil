import "package:flutter/material.dart";
import "package:birel_mobil/consts/Colors.dart" as colors;

class AshaneItemPlusButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 28,
      height: 28,
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        color: colors.ACCENT_TEXT_GRAY,
      ),
      child: Image.asset("assets/plus.png", width: 16, height: 16,),
    );
  }
}
