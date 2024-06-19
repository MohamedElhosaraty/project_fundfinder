import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_fundfinder/modules/botton_navigation2.dart';
import 'package:project_fundfinder/modules/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent)
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project_Fundfinder',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home:  const Splash_Screen(),
    );
  }
}

