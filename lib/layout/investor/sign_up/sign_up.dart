import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:project_fundfinder/layout/investor/login.dart';
import 'package:project_fundfinder/modules/splash.dart';
import 'package:project_fundfinder/shared/components/containerbutton.dart';
import 'package:project_fundfinder/shared/components/navigatorto.dart';
import 'package:project_fundfinder/shared/components/text_from.dart';
import 'package:project_fundfinder/shared/components/textbest.dart';

class Sign_Up extends StatefulWidget {
  const Sign_Up({super.key});

  @override
  State<Sign_Up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_Up> {

  bool isPassword = false;
  bool isPassword1 = false;
  final GlobalKey<FormState> _formState =  GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formState,
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
                      WavyAnimatedText('  Found Finder',textStyle: const TextStyle(
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
                  labelText: 'Name',
                  labelStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[300]
                  ),
                  prefixIcon:const Icon(
                    Icons.person,color: Colors.blueAccent,),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextForm(
                  validate: (value) {
                    if (value == null || value.contains("@gmail.com") == false){
                      return "Enter valid Email";
                    }
                    return null;
                  },
                  controller: emailController,
                  labelText: 'Email',
                  labelStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[300]
                  ),
                  prefixIcon:const Icon(
                    Icons.email,color: Colors.blueAccent,),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextForm(
                    validate:  (value) {
                      if (value == null || value.length < 5){
                        return " Enter valid Password";
                      }
                      return null;
                    },
                    labelText: 'Password',
                    obscureText: isPassword,
                    labelStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[300]
                    ),
                    prefixIcon:const Icon(
                      Icons.lock,color: Colors.blueAccent,),
                    suffixIcon: isPassword ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
                    onTap: (){
                      setState(() {
                        isPassword = !isPassword;
                      });
                    }
                ),
                const SizedBox(
                  height: 15,
                ),

                TextForm(
                    validate:  (value) {
                      if (value == null || value.length < 5){
                        return " The Password is Incorrect";
                      }
                      return null;
                    },
                    labelText: 'Confirm Password',
                    obscureText: isPassword1,
                    labelStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[300]
                    ),
                    prefixIcon:const Icon(
                      Icons.lock,color: Colors.blueAccent,),
                    suffixIcon: isPassword1 ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
                    onTap: (){
                      setState(() {
                        isPassword1 = !isPassword1;
                      });
                    }
                ),
                const SizedBox(
                  height: 100,
                ),
                ContainerButton(
                  style: const TextStyle(
                      fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white
                  ),
                  text: "Sign Up",
                  onPressed: () {
                    if (_formState.currentState!.validate()){
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Success')
                        ),
                      );
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Splash_Screen(),));

                    }
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
                          navigateTo(context, const LoginScreen());
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