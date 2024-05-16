import 'package:flutter/material.dart';
import 'package:project_fundfinder/shared/components/textbest.dart';


class Company extends StatelessWidget {
  const Company(
      {super.key,
        required this.title,
        required this.subtitle,
        required this.time,
        required this.image});
  final String title;
  final String subtitle;
  final String time;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all( 10),
      child:
      Row(children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(image),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextBest(
              text: time,
              color: Colors.grey,
              fontSize: 8,
              fontWeight: FontWeight.w300,
            ),
            TextBest(
              text: title,
              color: Colors.black,
              fontSize: 12,
            ),
            TextBest(
              text: subtitle,
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            )
          ],
        ),
        const Spacer(),
        const SizedBox(
          height: 30,
          width: 30,
          child:  Icon(
            Icons.more_horiz,
            color: Colors.grey,
            size: 12,
          ),
        ),

      ]),
    );
  }
}