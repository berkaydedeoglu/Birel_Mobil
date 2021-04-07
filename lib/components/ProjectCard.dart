import 'package:flutter/material.dart';
import 'package:birel_mobil/consts/Colors.dart' as colors;

class ProjectCard extends StatelessWidget {
  String imagePath;
  String header;
  String body;

  ProjectCard({Key key, this.imagePath, this.header, this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(12),
        child: Container(
            // width: 150,
            height: 272,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: colors.ACCENT_AREA_GRAY,
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 172,
                  child: Image.asset(this.imagePath, fit: BoxFit.fitWidth),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 8, top: 16),
                    child: Text(
                      this.header,
                      style: TextStyle(
                          fontSize: 20, color: colors.ACCENT_TEXT_GRAY),
                    )),
                Padding(
                    padding: EdgeInsets.only(left: 8, top: 3),
                    child: Text(
                      this.body,
                      style: TextStyle(fontSize: 14, color: colors.TEXT_GRAY),
                    ))
              ],
            )));
  }
}
