import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_fundfinder/layout/investor/profile.dart';
import 'package:project_fundfinder/shared/components/containerbutton.dart';
import 'package:project_fundfinder/shared/components/navigatorto.dart';
import 'package:project_fundfinder/shared/components/text_from.dart';
import 'package:project_fundfinder/shared/components/textbest.dart';

class Invest_now extends StatefulWidget {
  Invest_now({
    super.key,required this.company,
  });

  final company;

  @override
  State<Invest_now> createState() => _Invest_nowState();
}

class _Invest_nowState extends State<Invest_now> {
  TextEditingController controller = TextEditingController();

  int sum = 10;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height / 3,
              child: Stack(
                children: [
                  Image.network(
                    'https://th.bing.com/th/id/OIP.w8gLOa5WjupkJEdCNY8G-wHaD4?rs=1&pid=ImgDetMain',
                  ),
                  Positioned(
                    top: 130,
                    left: 20,
                    child: InkWell(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage(
                          widget.company['image'],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  TextBest(
                    text: widget.company["name"],
                    fontSize: 30,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextBest(
                        text: 'Min.investment',color: Colors.blueAccent,
                        fontSize: 30,
                      ),


                      TextBest(
                        text: widget.company["Min.investment"],
                        fontSize: 25,
                      ),

                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextBest(
                        text: "Arrow Price",
                        fontSize: 30,
                        color: Colors.blueAccent,
                      ),
                      TextBest(
                        text: "10\$",
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextBest(
                        text: "Number of Arrow",
                        fontSize: 25,
                        color: Colors.blueAccent,
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            sum--;
                            controller.text  = sum.toString();
                          });
                        },

                        child: const CircleAvatar(
                          radius: 15,
                          child: Icon(Icons.remove),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        height: 60,
                        child: TextForm(
                          textAlign: TextAlign.center,
                          controller: controller,
                          onChanged: (value) {
                            setState(() {
                              sum = int.parse(value) ;
                            });
                          },
                          keyBoard: TextInputType.number,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.black87),
                          hintText: '10',
                          hintStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.black87),
                        ),
                      ),
                       InkWell(
                         onTap: (){
                           setState(() {
                             sum++;
                             controller.text  = sum.toString();
                           });
                         },
                         child: const CircleAvatar(
                          radius: 15,
                          child: Icon(Icons.add),
                                               ),
                       ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextBest(
                        text: "Total Price",
                        fontSize: 30,
                        color: Colors.blueAccent,
                      ),
                      TextBest(
                        text:  "${sum  * 10} \$",
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height / 4.5,
                  ),
                  ContainerButton(
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                      text: "Buy Now",
                      onPressed: () {
                        Fluttertoast.showToast(
                            msg:
                                "Completed Buy $sum   The Arrow",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.blueAccent,
                            textColor: Colors.white,
                            fontSize: 20.0);
                        navigateAndFinish(context, const Profile_Screen());
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
