import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_fundfinder/layout/investor/invest%20two/profile2.dart';
import 'package:project_fundfinder/layout/investor/profile.dart';
import 'package:project_fundfinder/shared/components/containerbutton.dart';
import 'package:project_fundfinder/shared/components/navigatorto.dart';
import 'package:project_fundfinder/shared/components/text_from.dart';
import 'package:project_fundfinder/shared/components/textbest.dart';

List allCompany=[];


class Invest_now2 extends StatefulWidget {
  Invest_now2({
    super.key,required this.company,
  });

  final company;

  @override
  State<Invest_now2> createState() => _Invest_now2State();
}

class _Invest_now2State extends State<Invest_now2> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {

    List invest =
    [
      {
        "name" : widget.company["name"],
        "image" : widget.company["image"],
        "amount" : '500000',
        "proposed" : '20%',
      }
    ] ;

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
                        text: 'Funding Amount',color: Colors.blueAccent,
                        fontSize: 30,
                      ),


                      TextBest(
                        text: "${(widget.company["fundingAmount"]/10000).toString()}K\$",
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
                        text: "Round Type",
                        fontSize: 30,
                        color: Colors.blueAccent,
                      ),
                      TextBest(
                        text: widget.company["roundType"],
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextBest(text: 'Investment Amount',fontSize: 25,),
                  TextForm(
                    controller: controller1,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextBest(text: 'Proposed Equity',fontSize: 25,),

                  TextForm(
                    controller: controller2,

                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextBest(text: 'Terms',fontSize: 25,),

                  TextForm(

                  ),


                  const SizedBox(
                    height: 30,
                  ),
                  ContainerButton(
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                      text: "Buy Now",
                      onPressed: () {
                        allCompany.add(invest);
                        print("-----------------------------$allCompany");
                        Fluttertoast.showToast(
                            msg:
                                "Request has been sent",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.blueAccent,
                            textColor: Colors.white,
                            fontSize: 20.0);
                        navigateTo(context,  Profile_Screen2(company: allCompany,));
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
