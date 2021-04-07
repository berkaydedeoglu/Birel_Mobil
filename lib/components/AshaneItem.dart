import 'package:birel_mobil/components/AshaneItemBody.dart';
import 'package:birel_mobil/components/AshaneItemPlusButton.dart';
import 'package:flutter/material.dart';

class AshaneItem extends StatelessWidget {
  final String imagePath;
  
  AshaneItem({Key key, this.imagePath}) : super(key: key);

  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          AshaneItemBody(
            imagePath: "assets/TomatoPic.png", 
            productName: "Domates", 
            productCost: "₺ 19.95", 
            productAmount: "1 kg"
          ),
          Positioned(child: AshaneItemPlusButton(), top: 0, right: 0,)
        ],
      ),
    );
  }
}
