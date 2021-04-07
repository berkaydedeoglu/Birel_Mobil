import "package:flutter/material.dart";
import "package:birel_mobil/consts/Colors.dart" as colors;

class EventCard extends StatelessWidget {
  String date;
  String month;
  String image_path;
  String event_title;
  String event_description;
  String location;
  String time;

  EventCard(
      {this.date,
      this.month,
      this.image_path,
      this.event_title,
      this.event_description,
      this.location,
      this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(12.0),
        child: Column(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 58.0,
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 48.0)),
                    Text(
                      this.date,
                      style:
                          TextStyle(color: colors.ACCENT_TEXT_GRAY, fontSize: 18),
                    ),
                    Text(
                      this.month,
                      style: TextStyle(
                        color: colors.TEXT_GRAY,
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 24.0
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12))
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Image.asset(
                    this.image_path,
                    width: 96,
                    height: 136,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Padding(padding: EdgeInsets.only(top: 48)),
                    Text(
                      this.event_title,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: colors.TEXT_GRAY,
                      ),
                    ),

                    Padding(padding: EdgeInsets.only(top: 4)),

                    Text(
                      this.event_description,
                      style: TextStyle(color: Color(0xFF6F6F6F), fontSize: 12),
                    ),
                    Padding(padding: EdgeInsets.only(top: 16)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/placeholder.png",
                          width: 13,
                          height: 13,
                        ),
                        Padding(padding: EdgeInsets.only(left: 8)),
                        Text(this.location,
                            style: TextStyle(
                                fontSize: 10.0, color: colors.TEXT_GRAY))
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 6)),
                    Row(
                      children: [
                        Image.asset(
                          "assets/clock.png",
                          width: 13,
                          height: 13,
                        ),
                        Padding(padding: EdgeInsets.only(left: 8)),
                        Text(this.time,
                            style: TextStyle(
                                fontSize: 10.0, color: colors.TEXT_GRAY))
                      ],
                    ),
                  ])
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Container(height: 0.5, color: colors.FADED_ACCENT,),
          )
        ]));
  }
}
