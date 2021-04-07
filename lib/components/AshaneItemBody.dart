import "package:flutter/material.dart";
import "package:birel_mobil/consts/Colors.dart" as colors;

class AshaneItemBody extends StatelessWidget {
  String imagePath;
  String productCost;
  String productName;
  String productAmount;

  AshaneItemBody({
    Key key, this.imagePath, 
    this.productName, this.productCost,
    this.productAmount
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(child: Image.asset(imagePath), height: 100, width: 100,),
          Text(this.productCost,
              style: TextStyle(
                color: colors.COLOR_ACCENT,
                fontSize: 13,
                fontWeight: FontWeight.bold
              )),
          Text(
            this.productName,
            style: TextStyle(color: colors.WHITE, fontSize: 13),
          ),

          Text(
            this.productAmount, 
            style: TextStyle(
              color: colors.TEXT_GRAY, 
              fontSize: 13
            ),
          )
        ],
      ),
    );
  }
}
