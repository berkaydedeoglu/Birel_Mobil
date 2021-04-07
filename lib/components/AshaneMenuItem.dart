import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:birel_mobil/consts/Colors.dart' as colors;

class AshaneMenuItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        shape: BoxShape.circle, 
        color: colors.HELPFUL_BLUE, 
        border: Border.all(color: colors.BACKGROUND_GRAY, width: 10)
      ), 
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/ashane.svg"), 
            Text("Aşhane",style: TextStyle(color: colors.ACCENT_TEXT_GRAY),)
          ],
        ),
      )
    );
  }
}
