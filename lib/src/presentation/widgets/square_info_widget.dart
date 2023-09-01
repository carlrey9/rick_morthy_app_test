import 'package:flutter/material.dart';

class SquareInfoWidget extends StatelessWidget {
  Color? color;
  String title;
  String content;
  SquareInfoWidget({
    required this.title,
    required this.content,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (content == "") content = "Unknown";
    return Container(
      height: 80,
      width: double.infinity,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: color ?? Colors.green.withOpacity(0.3),
          borderRadius: BorderRadius.circular(12)),
      child: Text(
        "$title: $content",
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
