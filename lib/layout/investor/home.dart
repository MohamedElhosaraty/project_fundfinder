import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_fundfinder/layout/investor/recomedend.dart';
import 'package:project_fundfinder/shared/components/navigatorto.dart';
import 'package:project_fundfinder/shared/components/textbest.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextBest(
            text: 'Fundfinder',
        fontSize: 30
        ,color: Colors.blue,),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all( 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                TextBest(text:
                'Recommendation',
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: (){
                    navigateTo(context, const Recomedend_Screen());
                  },
                  child: TextBest(text:
                  'See All',
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 3,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height/2.9,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                  itemBuilder: (context ,index){
                    return Card(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              height :MediaQuery.of(context).size.height/4.1,
                              child: Image.network('https://2018.panfoundation.org/static/658273e4f451e41fb8bec97713ff570a/b36f0/3-fundfinder-get-help-for-your-out-of-pocket-costs-linkedin-people-1-.png')),
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
                    
                        ],
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 20,
            ),
            TextBest(text:
            'MOST FUNDED',
              color: Colors.black,
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height/2.9,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context ,index){
                    return Card(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              height :MediaQuery.of(context).size.height/4.1,
                              child: Image.asset('assets/images/most.png')),
                          const SizedBox(
                            height: 5,
                          ),
                          TextBest(text: '   TriAgenics',),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                               SizedBox(
                                width: MediaQuery.of(context).size.width/16,
                              ),
                              Column(
                                children: [
                                  TextBest(text:' \$4.42M',color: Colors.blue,fontSize: 18,),
                                  TextBest(text: 'Raised',fontSize: 13,),
                                ],
                              ),
                               SizedBox(
                                width: MediaQuery.of(context).size.width/10,
                              ),

                              Column(
                                children: [
                                  TextBest(text:'14924',color: Colors.blue,fontSize: 18,),
                                  TextBest(text: 'Investors',fontSize: 13,),
                                ],
                              ),
                               SizedBox(
                                width: MediaQuery.of(context).size.width/10,
                              ),
                              Column(
                                children: [
                                  TextBest(text:' \$40',color: Colors.blue,fontSize: 18,),
                                  TextBest(text: 'Min. Investment',fontSize: 13,),
                                ],
                              ),
                            ],
                          ),

                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
