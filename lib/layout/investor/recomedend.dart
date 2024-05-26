import 'package:flutter/material.dart';
import 'package:project_fundfinder/layout/investor/comoany.dart';
import 'package:project_fundfinder/shared/components/navigatorto.dart';
import 'package:project_fundfinder/shared/components/textbest.dart';

class Recomedend_Screen extends StatefulWidget {
  const Recomedend_Screen({super.key});

  @override
  State<Recomedend_Screen> createState() => _Recomedend_ScreenState();
}

class _Recomedend_ScreenState extends State<Recomedend_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextBest(text: "Recomedend",fontSize: 30,color: Colors.blue,),
        centerTitle: true,
      ),
      body:  SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.vertical,
            itemBuilder: (context ,index){
              return InkWell(
                onTap: (){
                  navigateTo(context,const Company_Screen());
                },
                child: Card(
                  margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height :MediaQuery.of(context).size.height/4,
                          width: MediaQuery.of(context).size.width,
                          child: Image.network(
                              'https://2018.panfoundation.org/static/658273e4f451e41fb8bec97713ff570a/b36f0/3-fundfinder-get-help-for-your-out-of-pocket-costs-linkedin-people-1-.png')),
                      const SizedBox(
                        height: 5,
                      ),
                      TextBest(text: '   TriAgenics',),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width/20,
                          ),
                          Column(
                            children: [
                              TextBest(text:' \$4.42M',color: Colors.blue,fontSize: 18,),
                              TextBest(text: 'Raised',fontSize: 13,),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width/20,
                          ),

                          Column(
                            children: [
                              TextBest(text:'14924',color: Colors.blue,fontSize: 18,),
                              TextBest(text: 'Investors',fontSize: 13,),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width/20,
                          ),
                          Column(
                            children: [
                              TextBest(text:' \$40',color: Colors.blue,fontSize: 18,),
                              TextBest(text: 'Min. Investment',fontSize: 13,),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),


                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
