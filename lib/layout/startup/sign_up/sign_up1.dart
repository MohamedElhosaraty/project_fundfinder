import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:project_fundfinder/layout/startup/sign_up/sign_up2.dart';
import 'package:project_fundfinder/shared/components/containerbutton.dart';
import 'package:project_fundfinder/shared/components/navigatorto.dart';
import 'package:project_fundfinder/shared/components/text_from.dart';

class Sign_Up1 extends StatefulWidget {
  const Sign_Up1({super.key});

  @override
  State<Sign_Up1> createState() => _Sign_up1State();
}

class _Sign_up1State extends State<Sign_Up1> {

  bool isPassword = false;
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
                  labelText: 'Company Name',
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
                  labelText: 'Founders',
                  obscureText: isPassword,
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
                  labelText: 'Company Email',
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
                    labelText: 'Company Password',
                    obscureText: isPassword,
                    labelStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[300]
                    ),
                    prefixIcon:const Icon(
                      Icons.lock,color: Colors.blueAccent,),
                    suffixIcon: isPassword ?const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
                    onTap: (){
                      setState(() {
                        isPassword = !isPassword;
                      });
                    }
                ),

               const SizedBox(
                  height: 100,
                ),
                ContainerButton(
                  style:const  TextStyle(
                      fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white
                  ),
                  text: "Follow",
                  onPressed: () {
                    if (_formState.currentState!.validate()){
                      ScaffoldMessenger.of(context).showSnackBar(
                       const  SnackBar(content: Text('Success')
                        ),
                      );
                      navigateAndFinish(context,const  Sign_Up2());
                    }
                  },),
              ],
            ),
          ),
        ),
      ),
    );
  }
}