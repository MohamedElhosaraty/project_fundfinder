import 'dart:io';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project_fundfinder/shared/components/textbest.dart';

import 'home_startup.dart';


class Profile_Startup_Screen extends StatefulWidget {
  const Profile_Startup_Screen({super.key});

  @override
  State<Profile_Startup_Screen> createState() => _Profile_Startup_ScreenState();
}

class _Profile_Startup_ScreenState extends State<Profile_Startup_Screen> {


  List com =
  [
    {
      "name" : "Adecco",
      "image" : "assets/images/image9.jpg",
      "Raised" : "6.12\$",
      "investors" : "25844",
      "Min.investment" : "5\$",
      'email': "Assad@gmail.com",
      'industry': "Transportation",
      'description': "Revolutionizing urban transportation with smart mobility solutions.",
      'founder': "Anna Clark",
      'executiveSummary': "Urban Mobility offers smart transportation solutions for city dwellers.",
      'businessModel': "B2B services for urban planning and consumer apps.",
      'marketAnalysis': "The urban mobility market is growing with increased focus on smart cities.",
      'productsAndServices': "Ride-sharing apps, electric scooters, and smart parking solutions.",
      'revenueModel': "Service fees, subscription fees, and advertising.",
      'fundingRequirements': "Seeking \$4 million to expand our product line and enter new markets.",
      'team': "Transportation experts, software developers, and urban planners.",
      'roundType': "Series A",
      'fundingAmount': 4000000,
      'minimumInvestment': 100000,
      'sharePrice': 14



    },
  ];
  File? image;

  late ImageSource select =ImageSource.camera ;

  final imagePicker = ImagePicker();


  uploadImage () async {

    if(image == null ){
      AwesomeDialog (
        context: context,
        dialogType: DialogType.question,
        animType: AnimType.bottomSlide,
        btnCancel: Column(
          children: [
            InkWell(
              onTap: () async {
                var pickerImage = await imagePicker.pickImage(
                    source:  ImageSource.gallery
                );
                if (pickerImage != null ){
                  setState(() {
                    image = File(pickerImage.path);
                  });
                }else{}
                Navigator.pop(context);

              },
              child:const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.camera),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'gallery',style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Colors.black
                  ),),
                ],
              ),
            ),
            const Divider(
              thickness: 2,
              color: Colors.black,
            ),
            InkWell(
              onTap:  () async {
                var pickerImage = await imagePicker.pickImage(
                    source:  ImageSource.camera
                );
                if (pickerImage != null ){
                  setState(() {
                    image = File(pickerImage.path);
                  });
                }else{}
                Navigator.pop(context);
              },
              child:const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.camera_alt_outlined),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'camera',style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Colors.black
                  ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ).show();
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 300,
                  child: Stack(
                    children: [
                      Image.network('https://th.bing.com/th/id/OIP.w8gLOa5WjupkJEdCNY8G-wHaD4?rs=1&pid=ImgDetMain',),
                      Positioned(
                        top: 120,
                        left: 20,
                        child: InkWell(
                          onTap: uploadImage,
                          child: CircleAvatar(
                            radius: 70,
                           backgroundImage: AssetImage(com[0]["image"]) ,
                            // backgroundImage: image == null ? null :
                            // FileImage(image!),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextBest(
                        text: com[0]["name"],
                        fontSize: 25,),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        height: 7,
                      ),

                      Row(
                        children: [
                          TextBest(
                            text:"email  ",
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          TextBest(
                            text:com[0]["email"],
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          TextBest(
                            text:"industry  ",
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          TextBest(
                            text:com[0]["industry"],
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          TextBest(
                            text:"founder  ",
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          TextBest(
                            text:com[0]["founder"],
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),


                        ],
                      ),
                      Row(
                        children: [
                          TextBest(
                            text:"roundType  ",
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          TextBest(
                            text:com[0]["roundType"],
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),


                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextBest(
                        text:com[0]["description"],
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextBest(
                        text: "ExecutiveSummary",
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: TextBest(
                          text: com[0]['executiveSummary'],
                          color: Colors.black87,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextBest(
                        text: "BusinessModel",
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: TextBest(
                          text: com[0]['businessModel'],
                          color: Colors.black87,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextBest(
                        text: "marketAnalysis",
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: TextBest(
                          text: com[0]['marketAnalysis'],
                          color: Colors.black87,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextBest(
                        text: "productsAndServices",
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: TextBest(
                          text: com[0]['productsAndServices'],
                          color: Colors.black87,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextBest(
                        text: "revenueModel",
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: TextBest(
                          text: com[0]['revenueModel'],
                          color: Colors.black87,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextBest(
                        text: "fundingRequirements",
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: TextBest(
                          text: com[0]['fundingRequirements'],
                          color: Colors.black87,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextBest(
                        text: "team",
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: TextBest(
                          text: com[0]['team'],
                          color: Colors.black87,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextBest(
                            text: 'FundingAmount',color: Colors.blueAccent,
                            fontSize: 25,
                          ),


                          TextBest(
                            text: '${com[0]["fundingAmount"].toString()}\$',
                            fontSize: 25,
                          ),

                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextBest(
                            text: 'Min.investment',color: Colors.blueAccent,
                            fontSize: 25,
                          ),


                          TextBest(
                            text: com[0]["minimumInvestment"].toString(),
                            fontSize: 25,
                          ),

                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      // SizedBox(
                      //     height: 130*5,
                      //     child: ListView.builder(
                      //         physics: const NeverScrollableScrollPhysics(),
                      //         itemCount: widget.company.length,
                      //         itemBuilder: (context , index) {
                      //           return  SizedBox(
                      //             height: 130,
                      //             child: Card(
                      //                 margin: const EdgeInsets.all(10),
                      //                 child:  Row(
                      //                   children: [
                      //                     Padding(
                      //                       padding: const  EdgeInsets.all(10.0),
                      //                       child:   CircleAvatar(
                      //                           radius: 35,
                      //                           backgroundImage:
                      //                           AssetImage(widget.company[index][0]["image"])
                      //                       ),
                      //                     ),
                      //                     Column(
                      //                       crossAxisAlignment: CrossAxisAlignment.start,
                      //                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //                       children: [
                      //                         TextBest(
                      //                           text: widget.company[index][0]["name"],
                      //                           color: Colors.black,
                      //                           fontSize: 18,
                      //                         ),
                      //                         Row(
                      //                           children: [
                      //                             TextBest(text: "Share",
                      //                               color: Colors.blueAccent,
                      //                               fontSize: 20,
                      //                               fontWeight: FontWeight.bold,),
                      //                             TextBest(
                      //                               text: '    ${widget.company[index][0]["arrow"]} ',
                      //                               color: Colors.black,
                      //                               fontSize: 18,
                      //                               fontWeight: FontWeight.bold,
                      //                             ),
                      //
                      //                           ],
                      //                         ),
                      //                       ],
                      //                     ),
                      //                     const Spacer(),
                      //                     Padding(
                      //                       padding: const EdgeInsets.all(10.0),
                      //                       child: InkWell(
                      //                         onTap: (){
                      //                           setState(() {
                      //                             allCompany.removeAt(index);
                      //                           });
                      //                           print("----------------$allCompany");
                      //                         },
                      //                         child: const CircleAvatar(
                      //                           radius: 25,
                      //                           child: Icon(
                      //                             Icons.delete,
                      //                             color: Colors.blueAccent,
                      //                             size: 30,
                      //                           ),
                      //                         ),
                      //                       ),
                      //                     ),
                      //                   ],
                      //                 )
                      //             ),
                      //           );
                      //         })
                      // ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        )
    );
  }
}
