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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                TextBest(
                  text: 'Recommendation',
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    navigateTo(context, const Recomedend_Screen());
                  },
                  child: TextBest(
                    text: 'See All',
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 3,
            ),
            BuildPageView(controller: pageCon,imageLink: 'assets/images/fundfinder.png',),
            const SizedBox(
              height: 20,
            ),
            TextBest(
              text: 'MOST FUNDED',
              color: Colors.black,
            ),
            const SizedBox(
              height: 5,
            ),
            BuildPageView(controller: pageCon2,imageLink: 'assets/images/most.png',),
          ],
        ),
      ),
    );
  }
}

class BuildPageView extends StatelessWidget{
  final PageController controller ;
  final String imageLink;

  const BuildPageView({super.key, required this.controller, required this.imageLink});

  @override
  Widget build(BuildContext context) {


    return Expanded(
      child: PageView.builder(
        physics: const  BouncingScrollPhysics(),
          controller: controller,
          itemCount: 5,
          itemBuilder: (context, index) {
            return AnimatedBuilder(
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
                        imageLink,
                      ),
                      fit: BoxFit.cover,
                      height: 400,
                      width: double.infinity,
                    ),
                  ),
                ),
                Positioned(
                    top: MediaQuery.of(context).size.height / 3.8,
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
                          text: '   TriAgenics',
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
                                  text: ' \$4.42M',
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
                                  text: '14924',
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
                                  text: ' \$40',
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
                  value = (1 - (value.abs() * .50)).clamp(0.0, 1.0);
                }
                return Center(
                  child: SizedBox(
                    height: Curves.easeOut.transform(value) * 400,
                    width: double.infinity,
                    child: child,
                  ),
                );
              },
            );
          }),
    );
  }
}
