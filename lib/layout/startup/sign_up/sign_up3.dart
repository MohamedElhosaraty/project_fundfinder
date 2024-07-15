import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:project_fundfinder/layout/startup/sign_up/login.dart';
import 'package:project_fundfinder/modules/botton_navigation2.dart';
import 'package:project_fundfinder/modules/splash.dart';
import 'package:project_fundfinder/shared/components/containerbutton.dart';
import 'package:project_fundfinder/shared/components/navigatorto.dart';
import 'package:project_fundfinder/shared/components/text_from.dart';
import 'package:project_fundfinder/shared/components/textbest.dart';

class Sign_Up3 extends StatefulWidget {
  const Sign_Up3({super.key});

  @override
  State<Sign_Up3> createState() => _Sign_Up3State();
}

class _Sign_Up3State extends State<Sign_Up3> {

  GlobalKey<FormState> formState =  GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formState,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width*.80,
                  child: AnimatedTextKit(
                    animatedTexts: [
                      WavyAnimatedText('  FundFinder',textStyle: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w400,
                          color: Colors.blueAccent
                      ),
                      ),
                    ],
                    isRepeatingAnimation: true,
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),

                TextForm(
                  labelText: 'productsAndServices',
                  labelStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[300]
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),

                TextForm(
                  labelText: 'revenueModel',
                  labelStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[300]
                  ),
                ),

                const SizedBox(
                  height: 15,
                ),
                TextForm(
                  labelText: 'fundingRequirements',
                  labelStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[300]
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextForm(
                  labelText: 'team',
                  labelStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[300]
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),

                TextForm(
                  labelText: 'roundType',
                  labelStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[300]
                  ),
                ),

                const  SizedBox(
                  height: 80,
                ),
                ContainerButton(
                  style:const  TextStyle(
                      fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white
                  ),
                  text: "Sign Up",
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Bottom_Navigation2(),));
                  },),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextBest(text: 'Already have an Account?',color: Colors.black,),
                    InkWell(
                        onTap: (){
                          navigateAndFinish(context, const Login_StartUp());
                        },
                        child: TextBest(text: '     Login ',color: Colors.blueAccent,)),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
