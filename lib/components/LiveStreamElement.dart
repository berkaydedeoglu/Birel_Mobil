import 'package:flutter/material.dart';
import 'package:birel_mobil/consts/Colors.dart' as colors;

class LiveStreamElement extends StatelessWidget {
  bool isLive;

  LiveStreamElement({this.isLive: false});

  Widget build(BuildContext context) {
    return Container(
        width: 85,
        height: 85,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: this.isLive ? 
                  Border.all(color: colors.COLOR_ACCENT, width: 2): null,
        ),
        child: Padding(
          padding: EdgeInsets.all(4),
          child: Container(
              decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage("assets/ex-5.jpg"), fit: BoxFit.cover),
          )),
        ));
  }
}
