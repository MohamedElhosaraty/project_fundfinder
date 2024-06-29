import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:project_fundfinder/layout/investor/sign_up/sign_up.dart';
import 'package:project_fundfinder/layout/startup/sign_up/sign_up1.dart';
import 'package:project_fundfinder/shared/components/containerbutton.dart';
import 'package:project_fundfinder/shared/components/navigatorto.dart';

class Welcome_Screen extends StatelessWidget {
  const Welcome_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Center(
            child: SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 70,
                  color: Colors.blueAccent,
                  shadows: [
                    Shadow(
                      blurRadius: 7.0,
                      color: Colors.white,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    FlickerAnimatedText(' FundFinder'),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Lottie.asset('assets/images/animation_wel.json'),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ContainerButton(
                    width: MediaQuery.of(context).size.width * .40,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    text: 'Startup',
                    onPressed: () {
                      navigateAndFinish(context, const Sign_Up1());
                    }),
                ContainerButton(
                    width: MediaQuery.of(context).size.width * .40,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    text: 'Investor',
                    onPressed: () {
                      navigateAndFinish(context, const Sign_Up());
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
