import 'dart:io';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project_fundfinder/cache/cache_helper.dart';
import 'package:project_fundfinder/layout/investor/invest_now.dart';
import 'package:project_fundfinder/shared/components/textbest.dart';


class Profile_Screen2 extends StatefulWidget {
   Profile_Screen2({super.key, required this.company});

  final List  company;

  @override
  State<Profile_Screen2> createState() => _Profile_Screen2State();
}



class _Profile_Screen2State extends State<Profile_Screen2> {


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
                          backgroundImage: image == null ? null :
                          FileImage(image!),                                            ),
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
                        text: 'EP One',
                    fontSize: 25,),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Row(
                      children: [
                         Row(
                          children: [
                            const Icon(
                              Icons.alternate_email_rounded,
                              color: Colors.grey,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            TextBest(
                              text: 'email.com',
                              color: Colors.blueAccent,
                              fontSize: 15,
                            ),
                          ],
                        ),
                       const SizedBox(
                          width: 10,
                        ),
                         Row(
                          children: [
                            const Icon(
                              Icons.calendar_month_rounded,
                              color: Colors.grey,
                              size: 20,
                            ),
                            TextBest(
                              text: 'Joined 2024',
                              color: Colors.grey.shade400,
                              fontSize: 15,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 130*5,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                          itemCount: widget.company.length,
                          itemBuilder: (context , index) {
                            return  SizedBox(
                              height: 130,
                              child: Card(
                                margin: const EdgeInsets.all(10),
                                child:  Row(
                                  children: [
                                   Padding(
                                     padding: const  EdgeInsets.all(10.0),
                                     child:   CircleAvatar(
                                        radius: 35,
                                        backgroundImage:
                                         AssetImage(widget.company[index][0]["image"])
                                      ),
                                   ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        TextBest(
                                          text: widget.company[index][0]["amount"],
                                          color: Colors.black,
                                          fontSize: 18,
                                        ),
                                        Row(
                                          children: [
                                            TextBest(text: "Equity",
                                              color: Colors.blueAccent,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,),
                                            TextBest(
                                              text: '    ${widget.company[index][0]["proposed"]} ',
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),

                                          ],
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                     Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: InkWell(
                                        onTap: (){
                                          setState(() {
                                            allCompany.removeAt(index);
                                          });
                                          print("----------------$allCompany");
                                        },
                                        child: const CircleAvatar(
                                          radius: 25,
                                          child: Icon(
                                            Icons.delete,
                                            color: Colors.blueAccent,
                                            size: 30,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ),
                            );
                      })
                    ),
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
