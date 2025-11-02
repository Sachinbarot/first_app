import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class DottedBorderScreen extends StatefulWidget {
  const DottedBorderScreen({super.key});

  @override
  State<DottedBorderScreen> createState() => _DottedBorderScreenState();
}

class _DottedBorderScreenState extends State<DottedBorderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dotted Border"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 100.0,
          ),
          Center(
            child: InkWell(
              onTap: () {},
              child: const DottedBorder(
                  options: RoundedRectDottedBorderOptions(
                      color: Colors.blueAccent, radius: Radius.circular(10.0)),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Dotted Bordered Text",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          const DottedBorder(
            options: CircularDottedBorderOptions(
              color: Colors.blueAccent,
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('assets/profile.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
