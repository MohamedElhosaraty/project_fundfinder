import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_fundfinder/core/api/dio_consumer.dart';
import 'package:project_fundfinder/cubit/similar_companies_cubit.dart';
import 'package:project_fundfinder/layout/investor/comoany.dart';
import 'package:project_fundfinder/shared/components/navigatorto.dart';
import 'package:project_fundfinder/shared/components/textbest.dart';

class Recomedend_Screen extends StatefulWidget {
  Recomedend_Screen({super.key, required this.company});

  final company;

  @override
  State<Recomedend_Screen> createState() => _Recomedend_ScreenState();
}

class _Recomedend_ScreenState extends State<Recomedend_Screen> {
  final controller = FixedExtentScrollController();

  List<Map> recommendCompany = [
    {
      "image": "assets/images/image10.jpg",
      "Raised": "4.42\$",
      "investors": "14924",
      "Min.investment": "40\$",
    },
    {
      "image": "assets/images/image11.jpg",
      "Raised": "5.52\$",
      "investors": "15214",
      "Min.investment": "50\$",
    },
    {
      "image": "assets/images/image12.jpg",
      "Raised": "6.62\$",
      "investors": "14784",
      "Min.investment": "30\$",
    },
    {
      "image": "assets/images/image13.jpg",
      "Raised": "1.12\$",
      "investors": "19874",
      "Min.investment": "20\$",
    },
    {
      "image": "assets/images/image14.jpg",
      "Raised": "2.42\$",
      "investors": "11254",
      "Min.investment": "10\$",
    },
    {
      "image": "assets/images/image15.jpg",
      "Raised": "4.81\$",
      "investors": "21454",
      "Min.investment": "40\$",
    },
    {
      "image": "assets/images/image16.jpg",
      "Raised": "2.92\$",
      "investors": "14784",
      "Min.investment": "30\$",
    },
    {
      "image": "assets/images/image17.jpg",
      "Raised": "3.32\$",
      "investors": "14564",
      "Min.investment": "20\$",
    },
    {
      "image": "assets/images/image2.jpg",
      "Raised": "6.12\$",
      "investors": "25844",
      "Min.investment": "5\$",
    },
    {
      "image": "assets/images/image5.jpg",
      "Raised": "6.82\$",
      "investors": "14784",
      "Min.investment": "10\$",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SimilarCompaniesCubit(api: DioConsumer(dio: Dio()))
        ..getSimilarCompanies(nameCompany: widget.company["name"]),
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: TextBest(
            text: "Similar Companies To ${widget.company["name"]} ",
            fontSize: 25,
            color: Colors.blue,
          ),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(
              Icons.arrow_forward,
              color: Colors.blueAccent,
            ),
            onPressed: () {
              final nextIndex = controller.selectedItem + 1;
              controller.animateToItem(nextIndex,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut);
            }),
        body: BlocConsumer<SimilarCompaniesCubit, SimilarCompaniesState>(
          listener: (context, state) {},
          builder: (context, state) {
            if(state is SimilarCompaniesLoadedState) {
              return const Center(child: CircularProgressIndicator(),);
            }
            if(state is SimilarCompaniesSuccessState){
              return ListWheelScrollView.useDelegate(
                controller: controller,
                physics: const FixedExtentScrollPhysics(),
                itemExtent: MediaQuery.sizeOf(context).height / 2,
                childDelegate: ListWheelChildBuilderDelegate(
                  childCount: 10,
                  builder: (context, index) {
                    return InkWell(
                      onTap: () {
                        navigateTo(context,  Company_Screen());
                      },
                      child: Card(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                height: MediaQuery.of(context).size.height / 3,
                                width: MediaQuery.of(context).size.width,
                                child: Image.asset(
                                  recommendCompany[index]["image"],
                                  width: double.infinity,
                                )),
                            const SizedBox(
                              height: 5,
                            ),
                            TextBest(
                              text: state.company.name.toString(),
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
                                      text: recommendCompany[index]["Raised"],
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
                                      text: recommendCompany[index]["investors"],
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
                                      text: recommendCompany[index]["Min.investment"],
                                      color: Colors.blue,
                                      fontSize: 20,
                                    ),
                                    TextBest(
                                      text: ' \$40',
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
              );
            }
            if(state is SimilarCompaniesFailureState){
              return Text(state.errorMessage);
            }
            return const Text('Mohamed');
          },
        ),
      ),
    );
  }
}
