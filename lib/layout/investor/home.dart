import 'package:flutter/material.dart';
import 'package:project_fundfinder/shared/components/textbest.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {

  bool onTap = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextBest(
            text: 'Fundfinder',
        fontSize: 30
        ,color: Colors.black,),
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
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: (){},
                  child: TextBest(text:
                  'See All',
                    color: Colors.blue,
                  ),
                ),
              ],
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
                        children: [
                          Image.network('https://th.bing.com/th/id/OIP.GM5eREp5FjuDvC6GhlDMuAAAAA?rs=1&pid=ImgDetMain'),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: (){
                                    setState(() {
                                      onTap = !onTap ;
                                    });
                                  },
                                  icon:onTap ? const Icon(Icons.favorite,color: Colors.red,size: 30,) : const Icon(Icons.favorite,color: Colors.white,size: 30,)),
                              TextBest(text: 'Likes',color: Colors.black,
                              fontSize: 30,)
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
                        children: [
                          Image.asset('assets/images/most.png'),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: (){
                                    setState(() {
                                      onTap = !onTap ;
                                    });
                                  },
                                  icon:onTap ? const Icon(Icons.favorite,color: Colors.red,size: 30,) : const Icon(Icons.favorite,color: Colors.white,size: 30,)),
                              TextBest(text: 'Likes',color: Colors.black,
                                fontSize: 30,)
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
