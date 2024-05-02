import 'package:flutter/material.dart';

class TextBest extends StatelessWidget {
  TextBest(
      {super.key,
        required this.text,
        this.color = Colors.white,
        this.fontWeight = FontWeight.bold,
        this.fontSize = 20,});

  String text;

  double fontSize = 20;
  FontWeight fontWeight = FontWeight.bold;
  Color color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
      TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color),
    );
  }
}