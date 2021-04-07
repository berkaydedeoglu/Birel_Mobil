import 'package:flutter/material.dart';
import 'package:birel_mobil/consts/Colors.dart' as colors;
import 'package:birel_mobil/components/LiveStreamElement.dart';


class LiveStreamPane extends StatelessWidget {
  
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(8),
        children: [
          LiveStreamElement(isLive: true),
          LiveStreamElement(isLive: true),
          LiveStreamElement(isLive: true),
          LiveStreamElement(),
          LiveStreamElement(),
          LiveStreamElement(),
          LiveStreamElement(),
          LiveStreamElement(),
          LiveStreamElement(),
          LiveStreamElement(),
          LiveStreamElement(),
          LiveStreamElement(),
          LiveStreamElement(),
          LiveStreamElement(),
          LiveStreamElement(),
          LiveStreamElement(),
          LiveStreamElement(),
          LiveStreamElement(),
          LiveStreamElement(),
          LiveStreamElement(),
          LiveStreamElement(),
          LiveStreamElement(),
          LiveStreamElement(),
          LiveStreamElement(),
          LiveStreamElement(),
          LiveStreamElement(),
          LiveStreamElement(),
          LiveStreamElement(),
          LiveStreamElement(),
          LiveStreamElement(),
          LiveStreamElement(),
        ],
      )    
    );
  }
}
