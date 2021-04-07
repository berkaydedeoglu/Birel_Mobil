import 'package:birel_mobil/components/AshaneItem.dart';
import 'package:carousel_slider/carousel_slider.dart';

import "package:flutter/material.dart";
import "package:birel_mobil/consts/Colors.dart" as colors;

class AshaneMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ashane"), backgroundColor: colors.COLOR_ACCENT,),
      backgroundColor: colors.BACKGROUND_GRAY,
      body: Stack(
        children:[
          FractionallySizedBox(
            heightFactor: 0.29,
            widthFactor: 1.0,
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                viewportFraction: 1.0
              ),
              items: [
                Image.asset("assets/ex-1.jpg", fit: BoxFit.fill,),
                Image.asset("assets/ex-2.jpg", fit: BoxFit.fill),
              ]
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.7,
            minChildSize: 0.7,
            builder: (_, __) => Container(
              color: colors.BACKGROUND_GRAY,
              alignment: Alignment.center,
              child: GridView.count(
                padding: EdgeInsets.only(top:24),
                controller: __,
                crossAxisCount: 3,
                children: List.generate(50, (index) => Center(child: AshaneItem())),
                mainAxisSpacing: 24,
                childAspectRatio: 0.9,
              )
            ,),
          ),
        ]
      )
    );
  }
}
