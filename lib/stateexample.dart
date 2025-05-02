import 'package:first_app/home.dart';
import 'package:first_app/productlist.dart';
import 'package:flutter/material.dart';
// import 'package:slider_button/slider_button.dart';

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool isButtonClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // leading: Icon(Icons.arrow_back_ios),
          centerTitle: true,
          title: const Text(
            'Slider Button',
          ),
        ),
        body: Center(
            // child: SliderButton(
            //   // buttonSize: 40.0,
            //   //all the package and code links is given in description please check and do not forget to subscribe! Thank you..
            //   backgroundColor: Colors.indigo.shade100,
            //   buttonColor: Colors.indigo,
            //   alignLabel: Alignment.center,
            //   label: const Text(
            //     "Swipe to go home",
            //     style: TextStyle(fontWeight: FontWeight.bold),
            //   ),
            //   action: () => Navigator.push(
            //       context, MaterialPageRoute(builder: (context) => HomePage())),
            //   icon: const Icon(
            //     Icons.arrow_forward_ios,
            //     color: Colors.white,
            //   ),
            // ),
            ));
  }
}
