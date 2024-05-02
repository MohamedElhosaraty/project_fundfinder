import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
  ContainerButton(
      {super.key,
        this.color = Colors.blueAccent,
        this.radius = 18,
        this.width = double.infinity,
        this.height = 45,
        required this.text,
        this.style,
        required this.onPressed});

  double width = double.infinity;
  double height = 45;
  Color color = Colors.blueAccent;
  double radius = 18;
  String text;

  Function() onPressed;
  TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: style,
        ),
      ),
    );

  }
}