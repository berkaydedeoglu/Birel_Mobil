import 'package:flutter/material.dart';
import 'package:birel_mobil/consts/Colors.dart' as colors;
import 'package:flutter_svg/svg.dart';


class DrawerBody extends StatelessWidget {
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(children: [
        Container(
          color: colors.BACKGROUND_GRAY,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                child: Text(
                  "BirEl Derneği",
                  style: TextStyle(color: colors.WHITE, fontSize: 24),
                ),
                height: 220,
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(color: colors.COLOR_ACCENT),
              ),
              ListTile(
                title: Text(
                  'Gönüllü Ol',
                  style: TextStyle(color: colors.WHITE),
                ),
                onTap: () => Navigator.pushNamed(context, "/beVolunteerScreen"),
              ),
              ListTile(
                title: Text(
                  'Projem Var',
                  style: TextStyle(color: colors.WHITE),
                ),
                onTap: () => Navigator.pushNamed(context, "/iHaveAnIdeaScreen"),
              ),
              ListTile(
                title: Text(
                  'İmdat',
                  style: TextStyle(color: colors.WHITE),
                ),
                onTap: () => Navigator.pushNamed(context, "/helpScreen"),
              ),
            ],
          ),
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SvgPicture.asset("assets/liquid_draw.svg"))
      ]),
    );
  }
}
