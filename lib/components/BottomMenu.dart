import 'package:birel_mobil/components/AshaneMenuItem.dart';
import 'package:birel_mobil/components/BottomMenuItem.dart';
import 'package:flutter/material.dart';
import 'package:birel_mobil/consts/Colors.dart' as colors;

class BottomMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Container(
            color: colors.COLOR_ACCENT,
            alignment: Alignment.center,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BottomMenuItem(
                    assetName: "assets/news.svg",
                    menuText: "Haberler",
                    onTap: () => Navigator.pushNamed(context, "/news"),
                  ),
                  BottomMenuItem(
                    assetName: "assets/announcement.svg",
                    menuText: "Etkinlikler",
                    onTap: () => Navigator.pushNamed(context, "/events")
                  ),
                  SizedBox(
                    width: 32,
                  ),
                  BottomMenuItem(
                    assetName: "assets/play.svg",
                    menuText: "Canlı",
                  ),
                  BottomMenuItem(
                    assetName: "assets/ashane.svg",
                    menuText: "Projeler",
                    onTap: () =>  Navigator.pushNamed(context, '/projects' ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: -40,
            child: GestureDetector(
                onTap: () => {print("Ciking"), Navigator.pushNamed(context, '/ashaneCarousel')},
                child: AshaneMenuItem()),
          ),
        ]);
  }
}
