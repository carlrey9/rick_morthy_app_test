import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Rick & Morthy App",
              textAlign: TextAlign.center,
            ),
          ),
        ),
        body: Center(
          child: CarouselSlider(
            options: CarouselOptions(
              height: 400,
              viewportFraction: 0.8,
              enableInfiniteScroll: true,
              autoPlay: true,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
            ),
            items: [
              OptionMenuW(
                color: Colors.red,
                title: "Characters",
                route: '/characters',
                image: "assets/images/characters.jpg",
              ),
              OptionMenuW(
                color: Colors.green,
                title: "Episodes",
                route: '/episodes',
                image: "assets/images/episodes.jpg",
              ),
              OptionMenuW(
                color: Colors.blue,
                title: "Locations",
                route: '/locations',
                image: "assets/images/locations.jpg",
              ),
            ],
          ),
        )

        /* Column(
        children: [
          Expanded(
            child: Row(
              children: [
                OptionMenuW(
                  color: Colors.red,
                  title: "Characters",
                  route: '/characters',
                ),
                OptionMenuW(
                  color: Colors.green,
                  title: "Episodes",
                  route: '/episodes',
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                OptionMenuW(
                  color: Colors.blue,
                  title: "Locations",
                  route: '/locations',
                ),
                OptionMenuW(
                  color: Colors.red,
                  title: "Comming soon",
                ),
              ],
            ),
          ),
        ],
      ), */
        );
  }
}

class OptionMenuW extends StatelessWidget {
  Color color;
  String title;
  String? route;
  String image;

  OptionMenuW({
    required this.color,
    required this.title,
    required this.image,
    this.route,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (route != null) {
          context.push(route!);
        }
      },
      child: Stack(
        children: [
          Image(
            image: AssetImage(image),
            fit: BoxFit.fitHeight,
            height: double.infinity,
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
