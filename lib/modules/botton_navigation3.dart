import 'package:flutter/material.dart';
import 'package:project_fundfinder/layout/investor/home.dart';
import 'package:project_fundfinder/layout/investor/invest%20two/home2.dart';
import 'package:project_fundfinder/layout/investor/invest%20two/natification2.dart';
import 'package:project_fundfinder/layout/investor/invest%20two/profile2.dart';
import 'package:project_fundfinder/layout/investor/invest_now.dart';
import 'package:project_fundfinder/layout/investor/natification.dart';
import 'package:project_fundfinder/layout/investor/profile.dart';
import 'package:project_fundfinder/layout/investor/recomedend.dart';

class Bottom_Navigation3 extends StatefulWidget {
  const Bottom_Navigation3({super.key});

  @override
  State<Bottom_Navigation3> createState() => _Bottom_Navigation3State();
}

class _Bottom_Navigation3State extends State<Bottom_Navigation3> {
  int selectIndex = 0;

  List pages =  [
    const Home_Screen2(),
    const Notification_Screen2(),
    Profile_Screen2(company: allCompany,),
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
