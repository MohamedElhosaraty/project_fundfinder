import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_fundfinder/shared/components/containerbutton.dart';
import 'package:project_fundfinder/shared/components/textbest.dart';

class Company_Screen extends StatefulWidget {
  const Company_Screen({super.key});

  @override
  State<Company_Screen> createState() => _Company_ScreenState();
}

class _Company_ScreenState extends State<Company_Screen>
    with SingleTickerProviderStateMixin {
  late TabController myController;

  @override
  void initState() {
    myController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height:  280,
                child: Stack(
                  children: [
                    Image.network(
                      'https://th.bing.com/th/id/OIP.w8gLOa5WjupkJEdCNY8G-wHaD4?rs=1&pid=ImgDetMain',
                    ),
                    Positioned(
                      top: 120,
                      left: 20,
                      child: InkWell(
                        onTap: () {},
                        child: const CircleAvatar(
                            radius: 70,
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/OIP.nVYMhjFjfKVWoI-VoPnnaAHaEK?rs=1&pid=ImgDetMain')),
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
                            //Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Splash_Screen(),));
                          }),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextBest(
                      text: "Company Name",
                      fontSize: 25,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextBest(
                      text:
                          "A company description is more about the intangibles and the many small ways in which you make a difference to customers’ lives..",
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                    TabBar(
                        controller: myController,
                        indicatorColor: Colors.blue,
                        tabAlignment: TabAlignment.start,
                        isScrollable: true,
                        tabs: [
                          Tab(
                            child: TextBest(
                              text: 'Posts',
                            ),
                          ),
                          Tab(
                            child: TextBest(text: 'Replies'),
                          ),
                          Tab(
                            child: TextBest(text: 'Highlights'),
                          ),
                          Tab(
                            child: TextBest(text: 'Media'),
                          ),
                          Tab(
                            child: TextBest(text: 'Likes'),
                          ),
                        ]),
                    SizedBox(
                      height: 340,
                      child: TabBarView(
                        controller: myController,
                        children: [
                          Container(
                            color: Colors.grey.shade300,
                              child: Center(child: TextBest(text: 'Posts'))),
                          Container(
                              color: Colors.grey.shade300,
                              child: Center(child: TextBest(text: 'Replies'))),
                          Container(
                              color: Colors.grey.shade300,
                              child: Center(child: TextBest(text: 'Highlights'))),
                          Container(
                              color: Colors.grey.shade300,
                              child: Center(child: TextBest(text: 'Media'))),
                          Container(
                              color: Colors.grey.shade300,
                              child: Center(child: TextBest(text: 'Likes'))),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
