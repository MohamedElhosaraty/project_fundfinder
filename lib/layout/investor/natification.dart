import 'package:flutter/material.dart';
import 'package:project_fundfinder/shared/components/textbest.dart';

class Notification_Screen extends StatefulWidget {
  const Notification_Screen({super.key});

  @override
  State<Notification_Screen> createState() => _Notification_ScreenState();
}

class _Notification_ScreenState extends State<Notification_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextBest(text: "Notification",fontSize: 30,color: Colors.blue,),
        centerTitle: true,
      ),
      body:  SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.vertical,
            itemBuilder: (context ,index){
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextBest(text: "Depending what notifications you want, you can change settings for certain apps or for your whole phone. Notifications show when you swipe down from the top of your screen. Some notifications can also show on your lock screen and home screen.",),
                )
              );
            }),
      ),


    );
  }
}
