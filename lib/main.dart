import 'package:birel_mobil/ui/Ashane/AshaneCarousel1.dart';
import 'package:birel_mobil/ui/Ashane/AshaneCarousel2.dart';
import 'package:birel_mobil/ui/Ashane/AshaneCarousel3.dart';
import 'package:birel_mobil/ui/Ashane/AshaneMain.dart';
import 'package:birel_mobil/components/FormScreen.dart';
import 'package:birel_mobil/ui/Dashboard.dart';
import 'package:birel_mobil/ui/Events/Events.dart';
import 'package:birel_mobil/ui/News/NewsDeatils.dart';
import 'package:birel_mobil/ui/News/NewsScreen.dart';
import 'package:birel_mobil/ui/splash.dart';
import 'package:flutter/material.dart';
import "package:birel_mobil/ui/Forms/BeVolunteer.dart" as volunteer;
import "package:birel_mobil/ui/Forms/IHaveIdea.dart" as iHaveAnIdea;
import "package:birel_mobil/ui/Forms/Help.dart" as help;
import "package:birel_mobil/ui/Projects/Projects.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bir-El Derneği',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/dashboard': (context) => Dashboard(),
        '/ashaneCarousel': (context) => AshaneCarousel(),
        '/ashaneCarousel2': (context) => AshaneCarousel2(),
        '/ashaneCarousel3': (context) => AshaneCarousel3(),
        '/ashaneMainScreen': (context) => AshaneMainScreen(),
        '/beVolunteerScreen': (context) => volunteer.form,
        '/iHaveAnIdeaScreen': (context) => iHaveAnIdea.form,
        '/helpScreen': (context) => help.form,
        '/news': (context) => NewsScreen(),
        '/newsDetail': (context) => NewsDetailsPage(),
        '/events': (context) => EventScreen(),
        '/projects': (context) => ProjectsSecreen()
      },
      initialRoute: '/splash',
    );
  }
}
