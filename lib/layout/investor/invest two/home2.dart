import 'package:flutter/material.dart';
import 'package:project_fundfinder/layout/investor/comoany.dart';
import 'package:project_fundfinder/shared/components/navigatorto.dart';
import 'package:project_fundfinder/shared/components/textbest.dart';

class Home_Screen2 extends StatefulWidget {
  const Home_Screen2({super.key});

  @override
  State<Home_Screen2> createState() => _Home_Screen2State();
}

class _Home_Screen2State extends State<Home_Screen2> {

  List<Map> company =
  [
    {
      "name" : "ABB",
      "email" : "Mohamed@gmail.com",
      "description" : "A company specializing in innovative tech solutions.",
      "founder": "Jane Doe",
      "industry" :"Tech",
      "image" : "assets/images/image1.jpg",
      "Raised" : "4.42\$",
      "investors" : "14924",
      "Min.investment" : "40\$",
      "executiveSummary": "Tech Innovators is revolutionizing the tech industry with groundbreaking solutions.",
      "businessModel": "Our business model focuses on SaaS products for enterprise clients.",
      "marketAnalysis": "The tech industry is growing rapidly, with a projected increase in demand for SaaS solutions.",
      "productsAndServices" : "We offer a range of software products, including cloud storage, CRM, and project management tools.",
      "revenueModel": "We generate revenue through subscription fees, service charges, and premium features.",
      "fundingRequirements": "We require \$5 million in funding to scale our operations and expand our product line.",
      "team" : "Our team consists of experienced professionals in software development, marketing, and sales.",
      "roundType": "Series A",
      "fundingAmount": 5000000,
      "minimumInvestment": 50000,
      "sharePrice": 10
    },
    {
      "name" : "Abakan",
      "email": "Omer@gmail.com",
      "industry" : "Green Technology",
      "description": "Innovative green technology solutions for a sustainable future.",
      "founder": "John Smith",
      "executiveSummary": "EcoTech Solutions is dedicated to providing eco-friendly technology to reduce carbon footprints.",
      "businessModel": "We sell energy-efficient products to businesses and consumers.",
      "marketAnalysis": "The green technology market is expanding rapidly due to increased environmental awareness.",
      "productsAndServices": "Solar panels, wind turbines, and energy management systems.",
      "revenueModel": "Revenue through product sales, maintenance services, and energy consultations.",
      "fundingRequirements": "Seeking \$3 million to expand our product line and market reach.",
      "team": "Experienced professionals in renewable energy, engineering, and marketing.",
      "roundType": "Series B",
      "fundingAmount": 3000000,
      "minimumInvestment": 100000,
      "sharePrice": 15,
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
      "email": "ibrahim@gmail.com",
      "industry": "Healthcare",
      "description": "Revolutionizing healthcare with advanced telemedicine solutions.",
      "founder": "Emily Johnson",
      "executiveSummary": "HealthWave offers telemedicine solutions to improve healthcare accessibility.",
      "businessModel": "Subscription-based service for healthcare providers and patients.",
      "marketAnalysis": "The telemedicine market is growing due to increased demand for remote healthcare.",
      "productsAndServices": "Telemedicine platform, virtual consultations, and remote monitoring.",
      "revenueModel": "Subscription fees and consultation charges.",
      "fundingRequirements": "Seeking \$2 million to enhance our platform and expand our market presence.",
      "team": "Experts in healthcare, software development, and customer service.",
      "roundType": "Seed",
      "fundingAmount": 2000000,
      "minimumInvestment": 50000,
      "sharePrice": 8



    },
    {
      "name" : "Academic Partnerships",
      "image" : "assets/images/image4.jpg",
      "Raised" : "1.12\$",
      "investors" : "19874",
      "Min.investment" : "20\$",
      "email": "hello@fintechinnovators.com",
      "industry": "Financial Technology",
      "description": "Leading the way in fintech solutions for the modern world.",
      "founder": "Michael Brown",
      "executiveSummary": "Fintech Innovators provides cutting-edge financial technology solutions.",
      "businessModel": "B2B services for financial institutions and consumers.",
      "marketAnalysis": "The fintech industry is rapidly growing with advancements in technology.",
      "productsAndServices": "Mobile banking apps, payment processing, and blockchain solutions.",
      "revenueModel": "Service fees, transaction fees, and licensing.",
      "fundingRequirements": "Seeking \$5 million to develop new products and enter new markets.",
      "team": "Financial experts, software developers, and business strategists.",
      "roundType": "Series A",
      "fundingAmount": 5000000,
      "minimumInvestment": 100000,
      "sharePrice": 12



    },
    {
      "name" : "Access",
      "image" : "assets/images/image5.jpg",
      "Raised" : "2.42\$",
      "investors" : "11254",
      "Min.investment" : "10\$",
      "email": "support@edubright.com",
      "industry": "EdTech",
      "description": "Innovative educational technology for a brighter future.",
      "founder": "Sarah Davis",
      "executiveSummary": "EduBright offers tech-driven educational solutions for students and teachers.",
      "businessModel": "Subscription-based e-learning platform.",
      'marketAnalysis': "The EdTech market is expanding with the increasing adoption of digital learning.",
      'productsAndServices': "Online courses, learning management systems, and educational apps.",
      'revenueModel': "Subscription fees and course sales.",
      'fundingRequirements': "Seeking \$1.5 million to expand our course offerings and improve our platform.",
      "team": "Educators, software developers, and instructional designers.",
      'roundType': "Seed",
      'fundingAmount': 1500000,
      'minimumInvestment': 50000,
      'sharePrice': 7


    },
    {
      "name" : "Access",
      "image" : "assets/images/image6.jpg",
      "Raised" : "4.81\$",
      "investors" : "21454",
      "Min.investment" : "40\$",
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
    {
      "name" : "Acer",
      "image" : "assets/images/image7.jpg",
      "Raised" : "2.92\$",
      "investors" : "14784",
      "Min.investment" : "30\$",
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
      "name" : "Acxiom",
      "image" : "assets/images/image8.jpg",
      "Raised" : "3.32\$",
      "investors" : "14564",
      "Min.investment" : "20\$",
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
    {
    "name" : "AEG",
      "image" : "assets/images/most.png",
      "Raised" : "6.82\$",
      "investors" : "14784",
      "Min.investment" : "10\$",
      'email': "Hand@gmail.com",
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
                                    text: company[index]['roundType'],
                                    color: Colors.blue,
                                    fontSize: 18,
                                  ),
                                  TextBest(
                                    text: 'round',
                                    fontSize: 15,
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
                                    text:  company[index]['fundingAmount'].toString(),
                                    color: Colors.blue,
                                    fontSize: 18,
                                  ),
                                  TextBest(
                                    text: 'fundingAmount',
                                    fontSize: 15,
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
                                    text:  company[index]['minimumInvestment'].toString(),
                                    color: Colors.blue,
                                    fontSize: 18,
                                  ),
                                  TextBest(
                                    text: 'Min',
                                    fontSize: 15,
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
