import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:project_fundfinder/modules/welcome.dart';
import 'package:project_fundfinder/shared/components/navigatorto.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5),(){
      navigateAndFinish(context, const Welcome_Screen());
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          AnimatedTextKit(
            animatedTexts: [
              WavyAnimatedText('FundFinder',textStyle: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w400,
                  color: Colors.blueAccent,
              ),
              ),

            ],
            isRepeatingAnimation: true,
          ),
          const SizedBox(
            height: 50,
          ),
          Lottie.asset('assets/images/Animation - 1719532053301.json'),

        ],
      ),
    );
  }
}