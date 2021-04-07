import 'package:flutter/material.dart';
import 'package:birel_mobil/components/CarouselSlide.dart';
import 'package:birel_mobil/consts/Colors.dart' as colors;

class AshaneCarousel3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CarouselSlide(
            widgets: [
              Text(
                "Nulla vitae semper",
                textAlign: TextAlign.center,
                style: TextStyle(color: colors.ACCENT_TEXT_GRAY, fontSize: 36),
              ),
              SizedBox(
                height: 48,
              ),
              Text(
                "Nulla facilisi. Aenean malesuada luctus semper. Fusce dolor ante, egestas eget ultrices vitae, interdum eget purus.",
                textAlign: TextAlign.center,
                style: TextStyle(color: colors.ACCENT_TEXT_GRAY, fontSize: 18),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 72)),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, "/ashaneMainScreen"),
                child: Text(
                  "Benim de bir katkım olsun", 
                  style: TextStyle(
                    decoration: TextDecoration.underline, 
                    fontWeight: FontWeight.w700,
                    color: colors.TEXT_GRAY
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}
