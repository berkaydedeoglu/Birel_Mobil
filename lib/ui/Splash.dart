import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:birel_mobil/consts/Colors.dart' as colors;

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Image.asset(
        "assets/help.jpg",
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
      ),
      SizedBox.expand(
          child: Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(top: 200),
              color: colors.FADED_BLACK,
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, "/dashboard"),
                child: Image.asset(
                  "assets/logo.png",
                  scale: 4,
                ),
              ))),
    ]));
  }
}
