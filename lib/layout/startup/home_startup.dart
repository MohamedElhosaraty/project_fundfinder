import 'package:flutter/material.dart';
import 'package:project_fundfinder/shared/components/textbest.dart';

List<Map> company =
[
  {
    "name": "ZoopShop",
    "email": "Mohamed@gmail.com",
    "industry": "Healthcare",
    "description": "Revolutionizing personal health management.",
    "founder": "John Smith",
    "image": "assets/images/image20.jpg",
    "executiveSummary": "Healthify offers advanced health monitoring solutions.",
    "businessModel": "B2B and B2C health monitoring services.",
    "marketAnalysis": "The healthcare sector is growing with a focus on preventive care.",
    "productsAndServices": "Wearable health devices, mobile health apps.",
    "revenueModel": "Subscription fees and product sales.",
    "fundingRequirements": "Seeking \$5 million to expand product line and market reach.",
    "team": "Medical professionals, engineers, and marketers.",
    "roundType": "Series A",
    "fundingAmount": 5000000,
    "minimumInvestment": 100000,
    "sharePrice": 50
  },
  {
    "name": "eFuneral",
    "email": "Ahmed@gmail.com",
    "industry": "Environmental Technology",
    "description": "Innovative solutions for a sustainable future.",
    "founder": "Sarah Green",
    "image": "assets/images/image21.jpg",
    "executiveSummary": "EcoTech develops cutting-edge environmental technologies.",
    "businessModel": "B2B solutions for sustainable practices.",
    "marketAnalysis": "Increasing demand for eco-friendly technologies.",
    "productsAndServices": "Renewable energy solutions, waste management systems.",
    "revenueModel": "Sales and service contracts.",
    "fundingRequirements": "Seeking \$3 million to scale operations and enter new markets.",
    "team": "Environmental scientists, engineers, and business developers.",
    "roundType": "Series A",
    "fundingAmount": 3000000,
    "minimumInvestment": 75000,
    "sharePrice": 30
  },
  {
    "name": "Tackk",
    "email": "support@foodie.com",
    "industry": "Food & Beverage",
    "description": "Connecting food lovers with unique dining experiences.",
    "founder": "David Cook",
    "image": "assets/images/image22.jpg",
    "executiveSummary": "Foodie offers a platform for discovering and booking unique dining experiences.",
    "businessModel": "B2C platform with commission-based revenue.",
    "marketAnalysis": "Growing trend of experiential dining.",
    "productsAndServices": "Dining experience marketplace, restaurant partnerships.",
    "revenueModel": "Commission on bookings and premium memberships.",
    "fundingRequirements": "Seeking \$1 million to expand our platform and increase partnerships.",
    "team": "Chefs, marketers, and technology experts.",
    "roundType": "Seed",
    "fundingAmount": 1000000,
    "minimumInvestment": 20000,
    "sharePrice": 20
  },
  {
    "name": "Acclaimd",
    "email": "hello@techtrek.com",
    "industry": "Travel Technology",
    "description": "Enhancing travel experiences through technology.",
    "founder": "Jessica Travel",
    "image": "assets/images/image23.jpg",
    "executiveSummary": "TechTrek provides innovative travel solutions.",
    "businessModel": "B2B and B2C travel technology services.",
    "marketAnalysis": "Growing demand for tech-enhanced travel experiences.",
    "productsAndServices": "Travel apps, booking platforms, virtual tours.",
    "revenueModel": "Subscription fees and service charges.",
    "fundingRequirements": "Seeking \$2 million to develop new features and expand user base.",
    "team": "Travel experts, software developers, and marketers.",
    "roundType": "Series A",
    "fundingAmount": 2000000,
    "minimumInvestment": 50000,
    "sharePrice": 40
  },
  {
    "name": "ToVieFor",
    "email": "contact@finguru.com",
    "industry": "Financial Technology",
    "description": "Empowering individuals with financial literacy and tools.",
    "founder": "Alex Finance",
    "image": "assets/images/image24.jpg",
    "executiveSummary": "FinGuru offers educational resources and financial tools.",
    "businessModel": "B2C platform with subscription and ad revenue.",
    "marketAnalysis": "Increased focus on personal financial management.",
    "productsAndServices": "Financial literacy courses, budgeting tools.",
    "revenueModel": "Subscription fees and ad revenue.",
    "fundingRequirements": "Seeking \$1.5 million to enhance platform features and marketing.",
    "team": "Financial experts, educators, and software developers.",
    "roundType": "Seed",
    "fundingAmount": 1500000,
    "minimumInvestment": 30000,
    "sharePrice": 25
  },
  {
    "name": "OHK Labs",
    "email": "info@smarthome.com",
    "industry": "Home Automation",
    "description": "Transforming homes with smart technology.",
    "founder": "Linda Smart",
    "image": "assets/images/image25.jpg",
    "executiveSummary": "SmartHome provides advanced home automation solutions.",
    "businessModel": "B2C sales of smart home devices.",
    "marketAnalysis": "Growing trend towards home automation.",
    "productsAndServices": "Smart lighting, security systems, home assistants.",
    "revenueModel": "Product sales and subscription services.",
    "fundingRequirements": "Seeking \$4 million to expand product line and marketing.",
    "team": "Engineers, product designers, and marketers.",
    "roundType": "Series B",
    "fundingAmount": 4000000,
    "minimumInvestment": 80000,
    "sharePrice": 35
  },
  {
    "name": "Lovely",
    "email": "contact@greengrocer.com",
    "industry": "E-commerce",
    "description": "Delivering fresh, organic produce to your doorstep.",
    "founder": "Peter Green",
    "image": "assets/images/image26.jpg",
    "executiveSummary": "GreenGrocer connects consumers with local organic farmers.",
    "businessModel": "B2C e-commerce with subscription model.",
    "marketAnalysis": "Increased demand for organic and locally sourced produce.",
    "productsAndServices": "Organic produce delivery, subscription boxes.",
    "revenueModel": "Subscription fees and sales.",
    "fundingRequirements": "Seeking \$2 million to expand delivery network and product range.",
    "team": "Farmers, logistics experts, and marketers.",
    "roundType": "Series A",
    "fundingAmount": 2000000,
    "minimumInvestment": 50000,
    "sharePrice": 30
  },
  {
    "name": "peerTransfer",
    "email": "info@techmentor.com",
    "industry": "EdTech",
    "description": "Connecting learners with tech mentors worldwide.",
    "founder": "Nina Tech",
    "image": "assets/images/image27.jpg",
    "executiveSummary": "TechMentor provides personalized tech mentoring services.",
    "businessModel": "B2C platform with subscription and session fees.",
    "marketAnalysis": "Growing demand for personalized tech education.",
    "productsAndServices": "Mentorship programs, online courses.",
    "revenueModel": "Subscription fees and session charges.",
    "fundingRequirements": "Seeking \$1 million to scale platform and marketing.",
    "team": "Tech experts, educators, and marketers.",
    "roundType": "Seed",
    "fundingAmount": 1000000,
    "minimumInvestment": 20000,
    "sharePrice": 20
  },
  {
    "name": "spotdock",
    "email": "support@fashionfi.com",
    "industry": "Fashion Technology",
    "description": "Reinventing fashion with technology.",
    "founder": "Olivia Style",
    "image": "assets/images/image28.jpg",
    "executiveSummary": "FashionFi offers tech-driven fashion solutions.",
    "businessModel": "B2C sales of fashion tech products.",
    "marketAnalysis": "Growing intersection of fashion and technology.",
    "productsAndServices": "Smart clothing, virtual fitting rooms.",
    "revenueModel": "Product sales and subscription services.",
    "fundingRequirements": "Seeking \$3 million to expand product line and market reach.",
    "team": "Fashion designers, engineers, and marketers.",
    "roundType": "Series A",
    "fundingAmount": 3000000,
    "minimumInvestment": 60000,
    "sharePrice": 40
  },
  {
    "name": "Trilliant",
    "email": "info@petcare.com",
    "industry": "Pet Care",
    "description": "Comprehensive care for your furry friends.",
    "founder": "Laura Pet",
    "image": "assets/images/image30.jpg",
    "executiveSummary": "PetCare offers a range of pet care services and products.",
    "businessModel": "B2C platform with subscription and product sales.",
    "marketAnalysis": "Increasing expenditure on pet care.",
    "productsAndServices": "Pet grooming, veterinary services, pet products.",
    "revenueModel": "Subscription fees and product sales.",
    "fundingRequirements": "Seeking \$2 million to enhance services and expand reach.",
    "team": "Veterinarians, pet care experts, and marketers.",
    "roundType": "Series A",
    "fundingAmount": 2000000,
    "minimumInvestment": 40000,
    "sharePrice": 30
  }
];

class Home_Startup_Screen extends StatefulWidget {
  const Home_Startup_Screen({super.key});

  @override
  State<Home_Startup_Screen> createState() => _Home_Startup_ScreenState();
}

class _Home_Startup_ScreenState extends State<Home_Startup_Screen> {

  final controller = FixedExtentScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextBest(
          text: "Similar Companies",
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
            return Card(
              margin:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                         company[index]["image"],width: double.infinity,)),
                  const SizedBox(
                    height: 5,
                  ),
                  TextBest(
                    text:  company[index]["name"],
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
                            text:company[index]["roundType"],
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
                            text: company[index]["fundingAmount"].toString(),
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
                            text: company[index]["minimumInvestment"].toString(),
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
