import 'package:flutter/material.dart';
import 'package:birel_mobil/consts/Colors.dart' as colors;

class DashboardHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(80)),
        color: colors.COLOR_ACCENT,
      ),
      height: 200,
    );
  }
}
