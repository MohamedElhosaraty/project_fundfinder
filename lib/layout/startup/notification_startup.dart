import 'package:flutter/material.dart';
import 'package:project_fundfinder/shared/components/textbest.dart';

class Notification_Startup_Screen extends StatefulWidget {
  const Notification_Startup_Screen({super.key});

  @override
  State<Notification_Startup_Screen> createState() =>
      _Notification_Startup_ScreenState();
}

class _Notification_Startup_ScreenState
    extends State<Notification_Startup_Screen> {
  final controller = ScrollController();

  void onListenerController() {
    setState(() {});
  }

  List notification = [
    "Ep One has offered an investment of 50000\$ with equity ",
  ];

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
          text: "Notification",
          fontSize: 30,
          color: Colors.blue,
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                controller: controller,
                itemCount: notification.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  final itemOffset =
                      index * MediaQuery.sizeOf(context).height / 5.2;
                  final difference = controller.offset - itemOffset;
                  final percent = 1 -
                      (difference /
                          (MediaQuery.sizeOf(context).height / 4 / 2));
                  double scale = percent;
                  double opacity = percent;
                  if (opacity > 1.0) opacity = 1.0;
                  if (opacity < 0.0) opacity = 0.0;
                  if (scale > 1.0) scale = 1.0;

                  return Opacity(
                    opacity: opacity,
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.identity()..scale(scale, 1.0),
                      child: Container(
                          alignment: Alignment.center,
                          height: MediaQuery.sizeOf(context).height / 6,
                          width: MediaQuery.sizeOf(context).width,
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 1,
                                    spreadRadius: 2)
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                TextBest(
                                  text:
                                      notification[index],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    InkWell(
                                      onTap : (){
                                        setState(() {
                                          notification.removeAt(index);
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        height: 40,
                                        width: 100,
                                        alignment: Alignment.center,
                                        child: TextBest(
                                          text: 'accept',
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                          BorderRadius.circular(10)),
                                      height: 40,
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: TextBest(
                                        text: 'decline',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
