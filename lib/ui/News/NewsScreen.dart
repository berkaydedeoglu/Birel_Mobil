import 'package:birel_mobil/ui/News/NewsDeatils.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:birel_mobil/consts/Colors.dart' as colors;
import 'package:birel_mobil/modal/News.dart';

class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.BACKGROUND_GRAY,
      appBar: AppBar(
        title: Text("Haberler"),
        backgroundColor: colors.COLOR_ACCENT,
      ),
      body: Column(children: [
        SizedBox(height: 24,),
        CarouselSlider(
          options: CarouselOptions(height: 200.0, enlargeCenterPage: true, autoPlay: true),
          items: mockNews.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Stack(children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: GestureDetector(
                      onTap: () => Navigator.pushNamed(context, "/newsDetail"),
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(32)),
                        ),
                        child: Stack(fit: StackFit.expand, children: [
                          Image.asset(
                            i.mainImage,
                            fit: BoxFit.fill,
                          ),
                          Container(
                            color: Color.fromARGB(120, 0, 0, 0),
                          )
                        ]),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Container(
                        child: Text(
                          i.title,
                          style: TextStyle(
                            color: colors.TEXT_GRAY,
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ),
                    bottom: 12,
                  )
                ]);
              },
            );
          }).toList(),
        ),
      ]),
    );
  }
}

List<News> mockNews = [
  News(
      mainImage: "assets/news_1.jpg",
      title: "Lorem ipsum dolor sit amet wer di lol",
      body: "null"),
  News(
      mainImage: "assets/news_2.jpg",
      title: "Lorem ipsum dolor sit amet",
      body: "null"),
  News(
      mainImage: "assets/news_3.jpg",
      title: "Lorem ipsum dolor sit amet",
      body: "null"),
];
