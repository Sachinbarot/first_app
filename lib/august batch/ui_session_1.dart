import 'package:first_app/august%20batch/ui_session_2.dart';
import 'package:flutter/material.dart';

class UiSession1 extends StatelessWidget {
  const UiSession1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Column(
        children: [
          MyCardWidget(),
          Container(
            height: 100,
            width: 100,
            color: Colors.amber,
          ),
          SizedBox(
            width: 10.0,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
          SizedBox(
            width: 10.0,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("Jai Hind");
        },
        child: const Text("🇮🇳"),
      ),
    );
  }
}
