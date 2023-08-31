import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
      ),
    );
  }
}

class OptionMenuW extends StatelessWidget {
  Color color;
  String title;
  String? route;

  OptionMenuW({
    required this.color,
    required this.title,
    this.route,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          if (route != null) {
            context.push(route!);
          }
        },
        child: Container(
          color: color,
          child: Center(child: Text(title)),
        ),
      ),
    );
  }
}
