import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';

class AnimScrollClass extends StatefulWidget {
  const AnimScrollClass({super.key});

  @override
  State<AnimScrollClass> createState() => _AnimScrollClassState();
}

class _AnimScrollClassState extends State<AnimScrollClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animate On Scroll"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const [
            FadeInLeft(
                config: BaseAnimationConfig(
              duration: Duration(seconds: 1),
              child: Card(
                color: Colors.amber,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30.0,
                            backgroundImage: AssetImage("assets/virat.png"),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Virat Kohli",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 18.0),
                              ),
                              Text(
                                "India",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey,
                                    fontSize: 12.0),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Format"),
                              Text("ODIs"),
                              Text("T20s"),
                              Text("Tests"),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Matches"),
                              Text("325"),
                              Text("210"),
                              Text("298"),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Innings"),
                              Text("315"),
                              Text("194"),
                              Text("389"),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Runs"),
                              Text("12,965"),
                              Text("3890"),
                              Text("9,023"),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      // Text("Jersey No"),
                      Text(
                        "18",
                        style: TextStyle(color: Colors.white, fontSize: 150.0),
                      ),
                    ],
                  ),
                ),
              ),
            )),

            SizedBox(
              height: 20.0,
            ),
            FadeInRight(
                config: BaseAnimationConfig(
              duration: Duration(seconds: 1),
              child: Card(
                color: Color.fromARGB(255, 147, 200, 243),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30.0,
                            backgroundImage: AssetImage("assets/rohit.png"),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Rohit Sharma",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 18.0),
                              ),
                              Text(
                                "India",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey,
                                    fontSize: 12.0),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Format"),
                              Text("ODIs"),
                              Text("T20s"),
                              Text("Tests"),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Matches"),
                              Text("325"),
                              Text("210"),
                              Text("298"),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Innings"),
                              Text("315"),
                              Text("194"),
                              Text("389"),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Runs"),
                              Text("12,965"),
                              Text("3890"),
                              Text("9,023"),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      // Text("Jersey No"),
                      Text(
                        "45",
                        style: TextStyle(color: Colors.white, fontSize: 150.0),
                      ),
                    ],
                  ),
                ),
              ),
            )),
            SizedBox(
              height: 20.0,
            ),
            FadeInLeft(
                config: BaseAnimationConfig(
              duration: Duration(seconds: 1),
              child: Card(
                color: Colors.greenAccent,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30.0,
                            backgroundImage: AssetImage("assets/dhoni.png"),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "M S Dhoni",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 18.0),
                              ),
                              Text(
                                "India",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey,
                                    fontSize: 12.0),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Format"),
                              Text("ODIs"),
                              Text("T20s"),
                              Text("Tests"),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Matches"),
                              Text("325"),
                              Text("210"),
                              Text("298"),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Innings"),
                              Text("315"),
                              Text("194"),
                              Text("389"),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Runs"),
                              Text("12,965"),
                              Text("3890"),
                              Text("9,023"),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      // Text("Jersey No"),
                      Text(
                        "07",
                        style: TextStyle(color: Colors.white, fontSize: 150.0),
                      ),
                    ],
                  ),
                ),
              ),
            )),
            SizedBox(
              height: 20.0,
            ),
            // FadeInLeft(
            //     config: BaseAnimationConfig(
            //         duration: Duration(seconds: 1),
            //         repeat: true,
            //         child: Card(
            //           color: Color.fromARGB(255, 147, 200, 243),
            //           child: Padding(
            //             padding: EdgeInsets.all(8.0),
            //             child: Column(
            //               children: [
            //                 Row(
            //                   children: [
            //                     CircleAvatar(
            //                       radius: 30.0,
            //                       backgroundImage:
            //                           AssetImage("assets/profile.png"),
            //                     ),
            //                     SizedBox(
            //                       width: 15.0,
            //                     ),
            //                     Column(
            //                       crossAxisAlignment: CrossAxisAlignment.start,
            //                       children: [
            //                         Text(
            //                           "Rohit Sharma",
            //                           style: TextStyle(
            //                               fontWeight: FontWeight.bold,
            //                               color: Colors.black,
            //                               fontSize: 18.0),
            //                         ),
            //                         Text(
            //                           "India",
            //                           style: TextStyle(
            //                               fontWeight: FontWeight.normal,
            //                               color: Colors.grey,
            //                               fontSize: 12.0),
            //                         ),
            //                       ],
            //                     )
            //                   ],
            //                 ),
            //                 SizedBox(
            //                   height: 20.0,
            //                 ),
            //                 Row(
            //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //                   children: [
            //                     Column(
            //                       crossAxisAlignment: CrossAxisAlignment.start,
            //                       children: [
            //                         Text("Format"),
            //                         Text("ODIs"),
            //                         Text("T20s"),
            //                         Text("Tests"),
            //                       ],
            //                     ),
            //                     Column(
            //                       crossAxisAlignment: CrossAxisAlignment.start,
            //                       children: [
            //                         Text("Matches"),
            //                         Text("325"),
            //                         Text("210"),
            //                         Text("298"),
            //                       ],
            //                     ),
            //                     Column(
            //                       crossAxisAlignment: CrossAxisAlignment.start,
            //                       children: [
            //                         Text("Innings"),
            //                         Text("315"),
            //                         Text("194"),
            //                         Text("389"),
            //                       ],
            //                     ),
            //                     Column(
            //                       crossAxisAlignment: CrossAxisAlignment.start,
            //                       children: [
            //                         Text("Runs"),
            //                         Text("12,965"),
            //                         Text("3890"),
            //                         Text("9,023"),
            //                       ],
            //                     ),
            //                   ],
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ))),
            // SizedBox(
            //   height: 20.0,
            // ),
            // FadeInRight(
            //     config: BaseAnimationConfig(
            //         duration: Duration(seconds: 1),
            //         repeat: true,
            //         child: Card(
            //           color: Colors.amber,
            //           child: Padding(
            //             padding: EdgeInsets.all(8.0),
            //             child: Column(
            //               children: [
            //                 Row(
            //                   children: [
            //                     CircleAvatar(
            //                       radius: 30.0,
            //                       backgroundImage:
            //                           AssetImage("assets/profile.png"),
            //                     ),
            //                     SizedBox(
            //                       width: 15.0,
            //                     ),
            //                     Column(
            //                       crossAxisAlignment: CrossAxisAlignment.start,
            //                       children: [
            //                         Text(
            //                           "Rohit Sharma",
            //                           style: TextStyle(
            //                               fontWeight: FontWeight.bold,
            //                               color: Colors.black,
            //                               fontSize: 18.0),
            //                         ),
            //                         Text(
            //                           "India",
            //                           style: TextStyle(
            //                               fontWeight: FontWeight.normal,
            //                               color: Colors.grey,
            //                               fontSize: 12.0),
            //                         ),
            //                       ],
            //                     )
            //                   ],
            //                 ),
            //                 SizedBox(
            //                   height: 20.0,
            //                 ),
            //                 Row(
            //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //                   children: [
            //                     Column(
            //                       crossAxisAlignment: CrossAxisAlignment.start,
            //                       children: [
            //                         Text("Format"),
            //                         Text("ODIs"),
            //                         Text("T20s"),
            //                         Text("Tests"),
            //                       ],
            //                     ),
            //                     Column(
            //                       crossAxisAlignment: CrossAxisAlignment.start,
            //                       children: [
            //                         Text("Matches"),
            //                         Text("325"),
            //                         Text("210"),
            //                         Text("298"),
            //                       ],
            //                     ),
            //                     Column(
            //                       crossAxisAlignment: CrossAxisAlignment.start,
            //                       children: [
            //                         Text("Innings"),
            //                         Text("315"),
            //                         Text("194"),
            //                         Text("389"),
            //                       ],
            //                     ),
            //                     Column(
            //                       crossAxisAlignment: CrossAxisAlignment.start,
            //                       children: [
            //                         Text("Runs"),
            //                         Text("12,965"),
            //                         Text("3890"),
            //                         Text("9,023"),
            //                       ],
            //                     ),
            //                   ],
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ))),
          ],
        ),
      ),
    );
  }
}
