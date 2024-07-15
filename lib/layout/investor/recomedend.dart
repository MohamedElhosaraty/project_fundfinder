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
      "name" : "Ace Limited",
      "image": "assets/images/image10.jpg",
      "Raised": "4.42\$",
      "investors": "14924",
      "Min.investment": "40\$",
      'email': "Ramadan@gmail.com",
      'industry': "Software Development",
      'description': "Cutting-edge software solutions for modern businesses.",
      'founder': "Alice Taylor",
      'executiveSummary': "TechNerd develops innovative software to streamline business operations.",
      'businessModel': "B2B software sales and custom development services.",
      'marketAnalysis': "The software development industry is booming with increasing digital transformation.",
      'productsAndServices': "Custom software development, SaaS solutions, and IT consulting.",
      'revenueModel': "Software sales, subscription fees, and consulting fees.",
      'fundingRequirements': "Seeking \$2 million to expand our development team and enhance product offerings.",
      'team': "Software engineers, product managers, and business analysts.",
      'roundType': "Seed",
      'fundingAmount': 2000000,
      'minimumInvestment': 50000,
      'sharePrice': 10


    },
    {
      "name" : "Lakestar",
      "image": "assets/images/image11.jpg",
      "Raised": "5.52\$",
      "investors": "15214",
      "Min.investment": "50\$",
      'email': "Ahmed@gmail.com",
      'industry': "Agriculture Technology",
      'description': "Revolutionizing agriculture with advanced technology solutions.",
      'founder': "Henry Green",
      'executiveSummary': "AgriTech provides technology-driven solutions to improve agricultural productivity.",
      'businessModel': "B2B and B2C sales of agricultural technology products.",
      'marketAnalysis': "The AgriTech market is expanding with the adoption of smart farming techniques.",
      'productsAndServices': "Smart irrigation systems, drones for crop monitoring, and soil sensors.",
      'revenueModel': "Product sales, subscription fees, and maintenance services.",
      'fundingRequirements': "Seeking \$3 million to develop new products and expand our market presence.",
      'team': "Agricultural experts, engineers, and software developers.",
      'roundType': "Series A",
      'fundingAmount': 3000000,
      'minimumInvestment': 100000,
      'sharePrice': 12


    },
    {
      "name" : "Swiss RE",
      "image": "assets/images/image12.jpg",
      "Raised": "6.62\$",
      "investors": "14784",
      "Min.investment": "30\$",
      'email': "Ali@gmail.com",
      'industry': "Fashion Technology",
      'description': "Innovative tech solutions for the fashion industry.",
      'founder': "Sophia White",
      'executiveSummary': "FashionForward provides technology solutions to enhance the fashion retail experience.",
      'businessModel': "B2B services for fashion retailers and B2C fashion apps.",
      'marketAnalysis': "The fashion tech market is growing with increasing digitalization in retail.",
      'productsAndServices': "Virtual fitting rooms, AI-based fashion recommendations, and inventory management.",
      'revenueModel': "Service fees, subscription fees, and licensing.",
      'fundingRequirements': "Seeking \$2.5 million to develop new features and expand our customer base.",
      'team': "Fashion experts, software developers, and data scientists.",
      'roundType': "Seed",
      'fundingAmount': 2500000,
      'minimumInvestment': 75000,
      'sharePrice': 9


    },
    {
      "name" : "Alpha Associates",
      "image": "assets/images/image13.jpg",
      "Raised": "1.12\$",
      "investors": "19874",
      "Min.investment": "20\$",
      'email': "Aliaa@gmail.com",
      'industry': "Biotechnology",
      'description': "Advancing healthcare with innovative biotechnology solutions.",
      'founder': "Daniel Brown",
      'executiveSummary': "BioHealth develops biotechnology solutions to improve healthcare outcomes.",
      'businessModel': "B2B sales to healthcare providers and pharmaceutical companies.",
      'marketAnalysis': "The biotechnology market is rapidly growing with advancements in medical research.",
      'productsAndServices': "Gene therapy, biopharmaceuticals, and diagnostic tools.",
      'revenueModel': "Product sales, licensing fees, and research grants.",
      'fundingRequirements': "Seeking \$4 million to expand our R&D efforts and bring new products to market.",
      'team': "Biotechnologists, medical researchers, and business development professionals.",
      'roundType': "Series A",
      'fundingAmount': 4000000,
      'minimumInvestment': 150000,
      'sharePrice': 18


    },
    {
      "name" : "Alphamundi",
      "image": "assets/images/image14.jpg",
      "Raised": "2.42\$",
      "investors": "11254",
      "Min.investment": "10\$",
      'email': "MohamedIbrahim@gmail.com",
      'industry': "Renewable Energy",
      'description': "Providing clean and sustainable energy solutions.",
      'founder': "Olivia Green",
      'executiveSummary': "GreenEnergy develops renewable energy solutions for a sustainable future.",
      'businessModel': "B2B and B2C sales of renewable energy products.",
      'marketAnalysis': "The renewable energy market is expanding with the shift towards sustainable energy sources.",
      'productsAndServices': "Solar panels, wind turbines, and energy storage systems.",
      'revenueModel': "Product sales, maintenance services, and energy consultations.",
      'fundingRequirements': "Seeking \$5 million to expand our product line and market reach.",
      'team': "Energy experts, engineers, and sales professionals.",
      'roundType': "Series B",
      'fundingAmount': 5000000,
      'minimumInvestment': 200000,
      'sharePrice':20

    },
    {
      "name" : "Credit Suisse",
      "image": "assets/images/image15.jpg",
      "Raised": "4.81\$",
      "investors": "21454",
      "Min.investment": "40\$",
      'email': "Khaled@gmail.com",
      'industry': "Real Estate",
      'description': "Building sustainable homes for a better future.",
      'founder': "Robert Thompson",
      'executiveSummary': "GreenHome develops eco-friendly housing solutions.",
      'businessModel': "B2C sales of sustainable homes.",
      'marketAnalysis': "The sustainable housing market is expanding with increased demand for green living.",
      'productsAndServices': "Eco-friendly homes, energy-efficient appliances, and smart home systems.",
      'revenueModel': "Home sales and service fees.",
      'fundingRequirements': "Seeking \$5 million to develop new housing projects and expand our reach.",
      'team': "Real estate experts, architects, and sustainability consultants.",
      'roundType': "Series B",
      'fundingAmount': 5000000,
      'minimumInvestment': 150000,
      'sharePrice': 20
    },
    {
      "name" : "CSFB Private Equity",

      "image": "assets/images/image16.jpg",
      "Raised": "2.92\$",
      "investors": "14784",
      "Min.investment": "30\$",
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
    {
      "name" : "Nextech Venture",

      "image": "assets/images/image17.jpg",
      "Raised": "3.32\$",
      "investors": "14564",
      "Min.investment": "20\$",
      'email': "Kareem@gmail.com",
      'industry': "Health and Fitness",
      'description': "Empowering healthier lifestyles through innovative fitness solutions.",
      'founder': "Chris Lee",
      'executiveSummary': "FitLife provides fitness solutions to help individuals lead healthier lives.",
      'businessModel': "Subscription-based fitness apps and equipment sales.",
      'marketAnalysis': "The fitness industry is growing with increasing health consciousness.",
      'productsAndServices': "Fitness tracking apps, home workout equipment, and personalized coaching.",
      'revenueModel': "Subscription fees and product sales.",
      'fundingRequirements': "Seeking \$2 million to develop new fitness products and expand our customer base.",
      'team': "Fitness experts, software developers, and sales professionals.",
      'roundType': "Seed",
      'fundingAmount': 2000000,
      'minimumInvestment': 50000,
      'sharePrice': 9
    },
    {
      "name" : "Armada Investment Group",

      "image": "assets/images/image2.jpg",
      "Raised": "6.12\$",
      "investors": "25844",
      "Min.investment": "5\$",
      'email': "Eltantawy@gmail.com",
      'industry': "Food and Beverage",
      'description': "Delivering delightful culinary experiences to your doorstep.",
      'founder': "Laura Martinez",
      'executiveSummary': "Foodie Delight offers gourmet meal kits and food delivery services.",
      'businessModel': "Subscription-based meal kits and on-demand delivery.",
      'marketAnalysis': "The food delivery market is booming with increased demand for convenience.",
      'productsAndServices': "Gourmet meal kits, on-demand food delivery, and catering services.",
      'revenueModel': "Subscription fees, delivery charges, and service fees.",
      'fundingRequirements': "Seeking \$3 million to expand our delivery network and kitchen facilities.",
      'team': "Chefs, logistics experts, and marketing specialists.",
      'roundType': "Series B",
      'fundingAmount': 3000000,
      'minimumInvestment': 100000,
      'sharePrice': 15
    },
    {
      "name" : "Core Capital",

      "image": "assets/images/image5.jpg",
      "Raised": "6.82\$",
      "investors": "14784",
      "Min.investment": "10\$",
      'email': "Youssef@gmail.com",
      'industry': "Travel and Tourism",
      'description': "Smart travel solutions for the modern traveler.",
      'founder': "David Wilson",
      'executiveSummary': "TravelSmart offers innovative solutions to enhance the travel experience.",
      'businessModel': "Commission-based model for travel bookings.",
      'marketAnalysis': "The travel industry is recovering and growing post-pandemic.",
      'productsAndServices': "Travel planning apps, booking platforms, and travel guides.",
      'revenueModel': "Commission fees and advertising.",
      'fundingRequirements': "Seeking \$2.5 million to expand our services and marketing efforts.",
      'team': "Travel experts, software developers, and marketing professionals.",
      'roundType': "Series A",
      'fundingAmount': 2500000,
      'minimumInvestment': 75000,
      'sharePrice': 10
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: TextBest(
          text: "Recommended Companies  ",
          fontSize: 25,
          color: Colors.blue,
        ),
        centerTitle: true,
      ),
      //  final controller = FixedExtentScrollController();

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
      body:
             ListWheelScrollView.useDelegate(
              controller: controller,
              physics: const FixedExtentScrollPhysics(),
              itemExtent: MediaQuery.sizeOf(context).height / 2,
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 10,
                builder: (context, index) {
                  return Card(
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
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: TextBest(
                            text: recommendCompany[index]["name"],
                          ),
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
                                  text: recommendCompany[index]["roundType"],
                                  color: Colors.blue,
                                  fontSize: 20,
                                ),
                                TextBest(
                                  text: 'round',
                                  fontSize: 16,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                TextBest(
                                  text: recommendCompany[index]["fundingAmount"].toString(),
                                  color: Colors.blue,
                                  fontSize: 20,
                                ),
                                TextBest(
                                  text: 'fundingAmount',
                                  fontSize: 16,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                TextBest(
                                  text: recommendCompany[index]["minimumInvestment"].toString(),
                                  color: Colors.blue,
                                  fontSize: 20,
                                ),
                                TextBest(
                                  text: 'Min',
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
                  );
                },
              ),
      ),
    );
  }
}
