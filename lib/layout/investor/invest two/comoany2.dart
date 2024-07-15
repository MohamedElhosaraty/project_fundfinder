import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_fundfinder/layout/investor/invest%20two/invest_now2.dart';
import 'package:project_fundfinder/layout/investor/invest%20two/recomedend2.dart';
import 'package:project_fundfinder/layout/investor/invest_now.dart';
import 'package:project_fundfinder/layout/investor/recomedend.dart';
import 'package:project_fundfinder/shared/components/containerbutton.dart';
import 'package:project_fundfinder/shared/components/navigatorto.dart';
import 'package:project_fundfinder/shared/components/textbest.dart';

class Company_Screen2 extends StatefulWidget {
  Company_Screen2({
    super.key,
     this.company,
  });

  final company;

  @override
  State<Company_Screen2> createState() => _Company_Screen2State();
}

class _Company_Screen2State extends State<Company_Screen2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 280,
                child: Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Image.network(
                        'https://th.bing.com/th/id/OIP.w8gLOa5WjupkJEdCNY8G-wHaD4?rs=1&pid=ImgDetMain',
                      ),
                    ),
                    Positioned(
                      top: 120,
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
                    Positioned(
                      top: 230,
                      left: MediaQuery.of(context).size.width * .455,
                      child: ContainerButton(
                          width: MediaQuery.of(context).size.width * .5,
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                          text: "Invest Now",
                          onPressed: () {
                            navigateTo(context, Invest_now2(company: widget.company,));
                          }),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextBest(
                      text: widget.company["name"],fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        TextBest(
                          text:"email  ",
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        TextBest(
                          text:widget.company["email"],
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        TextBest(
                          text:"industry  ",
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        TextBest(
                          text:widget.company["industry"],
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        TextBest(
                          text:"founder  ",
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        TextBest(
                          text:widget.company["founder"],
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),

        
                      ],
                    ),
                    Row(
                      children: [
                        TextBest(
                          text:"roundType  ",
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        TextBest(
                          text:widget.company["roundType"],
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),


                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextBest(
                      text:widget.company["description"],
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextBest(
                      text: "ExecutiveSummary",
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: TextBest(
                        text: widget.company['executiveSummary'],
                        color: Colors.black87,
                        textAlign: TextAlign.start,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextBest(
                      text: "BusinessModel",
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: TextBest(
                        text: widget.company['businessModel'],
                        color: Colors.black87,
                        textAlign: TextAlign.start,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextBest(
                      text: "marketAnalysis",
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: TextBest(
                        text: widget.company['marketAnalysis'],
                        color: Colors.black87,
                        textAlign: TextAlign.start,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextBest(
                      text: "productsAndServices",
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: TextBest(
                        text: widget.company['productsAndServices'],
                        color: Colors.black87,
                        textAlign: TextAlign.start,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextBest(
                      text: "revenueModel",
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: TextBest(
                        text: widget.company['revenueModel'],
                        color: Colors.black87,
                        textAlign: TextAlign.start,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextBest(
                      text: "fundingRequirements",
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: TextBest(
                        text: widget.company['fundingRequirements'],
                        color: Colors.black87,
                        textAlign: TextAlign.start,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextBest(
                      text: "team",
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: TextBest(
                        text: widget.company['team'],
                        color: Colors.black87,
                        textAlign: TextAlign.start,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextBest(
                          text: 'FundingAmount',color: Colors.blueAccent,
                          fontSize: 25,
                        ),
        
        
                        TextBest(
                          text: '${widget.company["fundingAmount"].toString()}\$',
                          fontSize: 25,
                        ),
        
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextBest(
                          text: 'investors',color: Colors.blueAccent,
                          fontSize: 25,
                        ),
        
        
                        TextBest(
                          text: widget.company["investors"],
                          fontSize: 25,
                        ),
        
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextBest(
                          text: 'Min.investment',color: Colors.blueAccent,
                          fontSize: 25,
                        ),
        
        
                        TextBest(
                          text: widget.company["Min.investment"],
                          fontSize: 25,
                        ),
        
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              Center(
                child: ContainerButton(
                    width: MediaQuery.of(context).size.width/1.2,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                    text: "Similar Companies",
                    onPressed: () {
                      navigateTo(context,   Recomedend_Screen2(company: widget.company,));
                    }),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
