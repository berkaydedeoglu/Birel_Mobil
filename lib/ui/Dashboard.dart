import 'package:birel_mobil/components/BottomMenu.dart';
import 'package:flutter/material.dart';
import 'package:birel_mobil/consts/Colors.dart' as colors;
import 'package:birel_mobil/components/DrawerBody.dart';
import 'package:birel_mobil/components/LiveStreamPane.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerBody(),
      appBar: AppBar(
        backgroundColor: colors.BACKGROUND_GRAY,
        elevation: 0,
        
        actions: [
          Center(child: Text("Bir-El Derneği", style: TextStyle(fontSize: 18)),),
          Padding(padding: EdgeInsets.only(left: 12)),
          Image.asset("assets/logo.png", width: 36, height: 36,)
        ],
      ),
      body: Column(children: [

        Padding(padding: EdgeInsets.only(top: 24)),

        FractionallySizedBox(
          child: Image.asset("assets/main_card.png",),
          widthFactor: 0.8,
        ),


        Container(
          padding: EdgeInsets.only(top:24, left:12),
          alignment: Alignment.centerLeft,
          child: Text(
            "Yayınlar",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 20,
              color: colors.ACCENT_TEXT_GRAY    
            ),
          ),
        ),


        LiveStreamPane(),

        Padding(
          padding:
          EdgeInsets.all(16),
        ),

        Container( 
          height: 132, 
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/DashboardVolunteerCard.png", fit: BoxFit.fill),
              Image.asset("assets/DashboardIdeaCard.png"),
              Image.asset("assets/DashboardUrgentCard.png"),
            ]
          ),
        ),

        Expanded(child: Container()),
        BottomMenu()
      ]),
      backgroundColor: colors.BACKGROUND_GRAY,
    );
  }
}
