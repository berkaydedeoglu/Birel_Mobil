import 'package:birel_mobil/components/EventCard.dart';
import 'package:birel_mobil/components/EventMonthCard.dart';
import "package:flutter/material.dart";
import "package:birel_mobil/consts/Colors.dart" as colors;

class EventScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.BACKGROUND_GRAY,
      appBar: AppBar(
        title: Text("Etkinlikler", style: TextStyle(color: colors.ACCENT_TEXT_GRAY, fontSize: 24.0)),
        backgroundColor: colors.BACKGROUND_GRAY,
        elevation: 0,
      ),
      body: ListView(
        children: [

          /* Padding(
            padding: const EdgeInsets.all(12.0),
            child: 
          ), */

          Container(
            child: EventMonthCard("Ağustos"),
            alignment: Alignment.centerLeft,
          ),
          EventCard(
            date: "09",
            month: "Ağustos",
            image_path: "assets/ex-4.jpg",
            event_title: "Lorem Ipsum Dolor",
            event_description: "Sit Amet. We Geht es Dier. Sit mundo",
            location: "Beylikdüzü/İstanbul",
            time: "15.00",
          ),

          EventCard(
            date: "30",
            month: "Ağustos",
            image_path: "assets/ex-5.jpg",
            event_title: "Aşhane 2. Düzen",
            event_description: "Sit Amet. We Geht es Dier. Sit mundo",
            location: "Şişli/İstanbul",
            time: "20.00",
          ),

          EventCard(
            date: "30",
            month: "Ağustos",
            image_path: "assets/ex-2.jpg",
            event_title: "Lorem Ipsum Dolor",
            event_description: "Sit Amet. We Geht es Dier. Sit mundo",
            location: "Beylikdüzü/İstanbul",
            time: "15.00",
          ),

          Container(
            child: EventMonthCard("Temmuz"),
            alignment: Alignment.centerLeft,
          ),

          EventCard(
            date: "09",
            month: "Temmuz",
            image_path: "assets/ex-1.jpg",
            event_title: "Lorem Ipsum Dolor",
            event_description: "Sit Amet. We Geht es Dier. Sit mundo",
            location: "Beylikdüzü/İstanbul",
            time: "15.00",
          ),

          EventCard(
            date: "09",
            month: "Temmuz",
            image_path: "assets/ex-4.jpg",
            event_title: "Lorem Ipsum Dolor",
            event_description: "Sit Amet. We Geht es Dier. Sit mundo",
            location: "Beylikdüzü/İstanbul",
            time: "15.00",
          ),

          EventCard(
            date: "09",
            month: "Temmuz",
            image_path: "assets/ex-5.jpg",
            event_title: "Lorem Ipsum Dolor",
            event_description: "Sit Amet. We Geht es Dier. Sit mundo",
            location: "Beylikdüzü/İstanbul",
            time: "15.00",
          ),

          Container(
            child: EventMonthCard("Haziran"),
            alignment: Alignment.centerLeft,
          ),

          EventCard(
            date: "09",
            month: "Haziran",
            image_path: "assets/ex-5.jpg",
            event_title: "Lorem Ipsum Dolor",
            event_description: "Sit Amet. We Geht es Dier. Sit mundo",
            location: "Beylikdüzü/İstanbul",
            time: "15.00",
          ),

          EventCard(
            date: "09",
            month: "Haziran",
            image_path: "assets/ex-2.jpg",
            event_title: "Lorem Ipsum Dolor",
            event_description: "Sit Amet. We Geht es Dier. Sit mundo",
            location: "Beylikdüzü/İstanbul",
            time: "15.00",
          ),

          EventCard(
            date: "09",
            month: "Haziran",
            image_path: "assets/ex-4.jpg",
            event_title: "Lorem Ipsum Dolor",
            event_description: "Sit Amet. We Geht es Dier. Sit mundo",
            location: "Beylikdüzü/İstanbul",
            time: "15.00",
          ),
        ],
      ),
    );
  }
}

