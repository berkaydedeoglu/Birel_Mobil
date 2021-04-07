import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:birel_mobil/consts/Colors.dart' as colors;

class BottomMenuItem extends StatefulWidget {
  String assetName;
  String menuText;
  Function onTap;

  BottomMenuItem({this.assetName, this.menuText, this.onTap});

  @override
  State<BottomMenuItem> createState() {
    return BottomMenuItemState();
  }
}

class BottomMenuItemState extends State<BottomMenuItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.widget.onTap,
      child: Container(
      height: 57,
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(widget.assetName),
          Text(
            widget.menuText,
            style: TextStyle(color: colors.ACCENT_TEXT_GRAY),
          )
        ],
      )),
    );
  }
}
