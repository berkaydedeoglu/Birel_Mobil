import 'package:flutter/material.dart';
import 'package:birel_mobil/components/CarouselSlide.dart';
import 'package:birel_mobil/consts/Colors.dart' as colors;

class AshaneCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(context, "/ashaneCarousel2"),
                  child: CarouselSlide(
            widgets: [
              Image.asset(
                "assets/birel_truck.png",
                width: 266,
              ),
              SizedBox(
                height: 64,
              ),
              Text(
                "Aşhane",
                textAlign: TextAlign.center,
                style: TextStyle(color: colors.ACCENT_TEXT_GRAY, fontSize: 36),
              ),
              SizedBox(
                height: 48,
              ),
              Text(
                "Etiam iaculis quis magna quis sollicitudin. Aliquam eu mattis nulla. Integer lobortis tincidunt risus quis tincidunt.",
                textAlign: TextAlign.center,
                style: TextStyle(color: colors.ACCENT_TEXT_GRAY, fontSize: 18),
              )
            ],
          ),
        ),
      ),
    );
  }
}
