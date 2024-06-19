import 'package:flutter/material.dart';
import 'package:project_fundfinder/shared/components/textbest.dart';

class Notification_Startup_Screen extends StatefulWidget {
  const Notification_Startup_Screen({super.key});

  @override
  State<Notification_Startup_Screen> createState() => _Notification_Startup_ScreenState();
}

class _Notification_Startup_ScreenState extends State<Notification_Startup_Screen> {

  final controller = ScrollController();

  void onListenerController () {
    setState(() {});
  }

  @override
  void initState() {
    controller.addListener(onListenerController);
    super.initState();
  }

  @override
  void dispose() {
    controller.removeListener(onListenerController);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextBest(
          text: "Notification",fontSize: 30,color: Colors.blue,),
        centerTitle: true,
      ),
      body:  Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                controller: controller,
                itemCount: 10,
                scrollDirection: Axis.vertical,
                itemBuilder: (context ,index){
                  final itemOffset = index * MediaQuery.sizeOf(context).height/5.2;
                  final difference = controller.offset - itemOffset ;
                  final percent = 1-(difference/(MediaQuery.sizeOf(context).height/4/2));
                  double scale = percent ;
                  double opacity = percent ;
                  if(opacity > 1.0 ) opacity = 1.0 ;
                  if(opacity < 0.0 ) opacity = 0.0 ;
                  if(scale > 1.0 ) scale = 1.0 ;


                  return Opacity(
                    opacity: opacity,
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.identity()..scale(scale,1.0),
                      child: Container(
                          alignment: Alignment.center,
                          height: MediaQuery.sizeOf(context).height/5.5,
                          width: MediaQuery.sizeOf(context).width,
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(color: Colors.black87,blurRadius: 1,spreadRadius: 2)
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextBest(text: "Depending what notifications you want, you can change settings for certain apps or for your whole phone. Notifications show when you swipe down from the top of your screen.",),
                          )
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),


    );
  }
}