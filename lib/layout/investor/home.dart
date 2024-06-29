import 'package:flutter/material.dart';
import 'package:project_fundfinder/layout/investor/comoany.dart';
import 'package:project_fundfinder/shared/components/navigatorto.dart';
import 'package:project_fundfinder/shared/components/textbest.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {

  List<Map> company =
  [
    {
      "name" : "ABB",
      "image" : "assets/images/image1.jpg",
      "Raised" : "4.42\$",
      "investors" : "14924",
      "Min.investment" : "40\$",
    },
    {
      "name" : "Abakan",
      "image" : "assets/images/image2.jpg",
      "Raised" : "5.52\$",
      "investors" : "15214",
      "Min.investment" : "50\$",

    },
    {
      "name" : "AbbVie",
      "image" : "assets/images/image3.jpg",
      "Raised" : "6.62\$",
      "investors" : "14784",
      "Min.investment" : "30\$",

    },
    {
      "name" : "Academic Partnerships",
      "image" : "assets/images/image4.jpg",
      "Raised" : "1.12\$",
      "investors" : "19874",
      "Min.investment" : "20\$",

    },
    {
      "name" : "Access",
      "image" : "assets/images/image5.jpg",
      "Raised" : "2.42\$",
      "investors" : "11254",
      "Min.investment" : "10\$",

    },
    {
      "name" : "Access",
      "image" : "assets/images/image6.jpg",
      "Raised" : "4.81\$",
      "investors" : "21454",
      "Min.investment" : "40\$",

    },
    {
      "name" : "Acer",
      "image" : "assets/images/image7.jpg",
      "Raised" : "2.92\$",
      "investors" : "14784",
      "Min.investment" : "30\$",

    },
    {
      "name" : "Acxiom",
      "image" : "assets/images/image8.jpg",
      "Raised" : "3.32\$",
      "investors" : "14564",
      "Min.investment" : "20\$",

    },
    {
    "name" : "Adecco",
      "image" : "assets/images/image9.jpg",
      "Raised" : "6.12\$",
      "investors" : "25844",
      "Min.investment" : "5\$",

  },
    {
    "name" : "AEG",
      "image" : "assets/images/most.png",
      "Raised" : "6.82\$",
      "investors" : "14784",
      "Min.investment" : "10\$",

  },

  ];

  PageController pageCon = PageController(initialPage: 0, viewportFraction: .9);

  PageController pageCon2 =
      PageController(initialPage: 0, viewportFraction: .9);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextBest(
          text: 'Fundfinder',
          fontSize: 30,
          color: Colors.blue,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextBest(
              text: 'Recommendation',fontSize: 30,
            ),
            const SizedBox(
              height: 3,
            ),
            BuildPageView(
              controller: pageCon,company: company,),
          ],
        ),
      ),
    );
  }
}

class BuildPageView extends StatelessWidget{
  final PageController controller ;
  final List<Map> company;

  const BuildPageView({super.key, required this.controller, required this.company});

  @override
  Widget build(BuildContext context) {


    return Expanded(
      child: PageView.builder(
        physics: const  BouncingScrollPhysics(),
          controller: controller,
          itemCount: company.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: (){
                navigateTo(context, Company_Screen(company: company[index],));
              },
              child: AnimatedBuilder(
                animation: controller,
                child: Stack(children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(2, 2),
                          color: Colors.black,
                          blurRadius: 5,
                        )
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child:  Image(
                        image: AssetImage(
                          company[index]['image'],
                        ),
                        fit: BoxFit.cover,
                        height: 400,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height / 3,
                      bottom: 10,
                      left: 10,
                      right: 10,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                          color: Colors.white.withOpacity(.9),
                        ),
                        height: 120,
                      )),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    right: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextBest(
                            text: company[index]['name'],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width /
                                    20,
                              ),
                              Column(
                                children: [
                                  TextBest(
                                    text: company[index]['Raised'],
                                    color: Colors.blue,
                                    fontSize: 18,
                                  ),
                                  TextBest(
                                    text: 'Raised',
                                    fontSize: 13,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width /
                                    20,
                              ),
                              Column(
                                children: [
                                  TextBest(
                                    text:  company[index]['investors'],
                                    color: Colors.blue,
                                    fontSize: 18,
                                  ),
                                  TextBest(
                                    text: 'Investors',
                                    fontSize: 13,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width /
                                    20,
                              ),
                              Column(
                                children: [
                                  TextBest(
                                    text:  company[index]['Min.investment'],
                                    color: Colors.blue,
                                    fontSize: 18,
                                  ),
                                  TextBest(
                                    text: 'Min. Investment',
                                    fontSize: 13,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
                builder: (context, child) {
                  double value = 1.0;
                  if (controller.position.haveDimensions) {
                    value = controller.page! - index;
                    value = (1 - (value.abs() * .60)).clamp(0.0, 1.0);
                  }
                  return Center(
                    child: SizedBox(
                      height: Curves.easeOut.transform(value) * 400,
                      width: double.infinity,
                      child: child,
                    ),
                  );
                },
              ),
            );
          }),
    );
  }
}
