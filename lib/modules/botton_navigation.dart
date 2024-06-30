import 'package:flutter/material.dart';
import 'package:project_fundfinder/layout/investor/home.dart';
import 'package:project_fundfinder/layout/investor/invest_now.dart';
import 'package:project_fundfinder/layout/investor/natification.dart';
import 'package:project_fundfinder/layout/investor/profile.dart';
import 'package:project_fundfinder/layout/investor/recomedend.dart';

class Bottom_Navigation extends StatefulWidget {
  const Bottom_Navigation({super.key});

  @override
  State<Bottom_Navigation> createState() => _Bottom_NavigationState();
}

class _Bottom_NavigationState extends State<Bottom_Navigation> {
  int selectIndex = 0;

  List pages =  [
    const Home_Screen(),
    const Notification_Screen(),
    Profile_Screen(company: allCompany,),
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
