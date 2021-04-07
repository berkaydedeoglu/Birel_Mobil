import 'package:flutter/material.dart';
import 'package:birel_mobil/consts/Colors.dart' as colors;
import 'package:birel_mobil/components/ProjectCard.dart';

class ProjectsSecreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colors.BACKGROUND_GRAY,
        appBar: AppBar(
          title: Text("Projeler"),
          backgroundColor: colors.COLOR_ACCENT,
        ),
        body: ListView(
            children: mockData
        ));
  }
}


List<ProjectCard> mockData = [
  ProjectCard(
              imagePath: "assets/ex-5.jpg",
              header: "İlk Proje",
              body: "Lorem Ipsum Dolor Sit Amet Ut enim ad minim veniam quis nostrud exercitation ullamco."),
          ProjectCard(
              imagePath: "assets/ex-4.jpg",
              header: "İkinci Proje",
              body: "Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua"),
          ProjectCard(
              imagePath: "assets/ex-2.jpg",
              header: "3. Proje",
              body: "Lorem Ipsum Dolor Sit Amet"),
          ProjectCard(
              imagePath: "assets/ex-5.jpg",
              header: "4. Proje",
              body: "Lorem Ipsum Dolor Sit Amet"),
          ProjectCard(
              imagePath: "assets/ex-1.jpg",
              header: "5. Proje",
              body: "Lorem Ipsum Dolor Sit Amet"),
 
];
