import 'package:flutter/material.dart';
import 'package:project_fundfinder/layout/investor/home.dart';
import 'package:project_fundfinder/layout/investor/natification.dart';
import 'package:project_fundfinder/layout/investor/profile.dart';
import 'package:project_fundfinder/layout/investor/recomedend.dart';

class Bottom_Navigation2 extends StatefulWidget {
  const Bottom_Navigation2({super.key});

  @override
  State<Bottom_Navigation2> createState() => _Bottom_Navigation2State();
}

class _Bottom_Navigation2State extends State<Bottom_Navigation2> {
  int selectIndex = 0;

  List pages = const [
    Home_Screen(),
    Recomedend_Screen(),
    Notification_Screen(),
    Profile_Screen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.recommend_outlined),
            label: "Recomedend",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_important_outlined),
            label: "Notification",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        currentIndex: selectIndex,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: (index)
        {
          setState(() {
            selectIndex = index ;
          });

        },
      ),
    );
  }
}
