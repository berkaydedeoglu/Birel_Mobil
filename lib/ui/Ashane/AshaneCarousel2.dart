import 'package:flutter/material.dart';
import 'package:birel_mobil/components/CarouselSlide.dart';
import 'package:birel_mobil/consts/Colors.dart' as colors;

class AshaneCarousel2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(context, "/ashaneCarousel3"),
                  child: CarouselSlide(
            widgets: [
              Text(
                "Proin Velit",
                textAlign: TextAlign.center,
                style: TextStyle(color: colors.ACCENT_TEXT_GRAY, fontSize: 36),
              ),
              SizedBox(
                height: 48,
              ),
              Text(
                "Duis convallis euismod ipsum sit amet molestie. Aenean ac finibus erat. Nulla condimentum velit libero, non faucibus magna imperdiet in.",
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
