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

  final controller = FixedExtentScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextBest(
          text: "Recomedend",
          fontSize: 30,
          color: Colors.blue,
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward,color: Colors.blueAccent,),
          onPressed: () {
          final nextIndex = controller.selectedItem + 1 ;
          controller.animateToItem(
              nextIndex, duration: const Duration(seconds: 1), curve: Curves.easeInOut);
          }),
      body: ListWheelScrollView.useDelegate(
        controller: controller,
        physics: const FixedExtentScrollPhysics(),
        itemExtent: MediaQuery.sizeOf(context).height / 2,
        childDelegate: ListWheelChildBuilderDelegate(
          childCount: 10,
          builder: (context, index) {
            return InkWell(
              onTap: () {
                navigateTo(context, const Company_Screen());
              },
              child: Card(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: MediaQuery.of(context).size.height / 3,
                        width: MediaQuery.of(context).size.width,
                        child: Image.network(
                            fit: BoxFit.cover,
                            'https://2018.panfoundation.org/static/658273e4f451e41fb8bec97713ff570a/b36f0/3-fundfinder-get-help-for-your-out-of-pocket-costs-linkedin-people-1-.png')),
                    const SizedBox(
                      height: 5,
                    ),
                    TextBest(
                      text: '   TriAgenics',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            TextBest(
                              text: ' \$4.42M',
                              color: Colors.blue,
                              fontSize: 20,
                            ),
                            TextBest(
                              text: 'Raised',
                              fontSize: 16,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            TextBest(
                              text: '14924',
                              color: Colors.blue,
                              fontSize: 20,
                            ),
                            TextBest(
                              text: 'Investors',
                              fontSize: 16,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            TextBest(
                              text: ' \$40',
                              color: Colors.blue,
                              fontSize: 20,
                            ),
                            TextBest(
                              text: 'Min. Investment',
                              fontSize: 16,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
