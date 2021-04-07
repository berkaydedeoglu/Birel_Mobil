import 'package:flutter/material.dart';
import 'package:birel_mobil/consts/Colors.dart' as colors;

class CarouselSlide extends StatelessWidget {
  final List<Widget> widgets;
  CarouselSlide({Key key, this.widgets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
        child: Container(
      color: colors.BACKGROUND_GRAY,
      child: FractionallySizedBox(
        alignment: Alignment.topCenter,
        widthFactor: 0.8,
        heightFactor: 0.8,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: this.widgets),
        )
        ),
    );
  }
}
