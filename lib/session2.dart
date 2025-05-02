import 'package:flutter/material.dart';

class Session2Class extends StatelessWidget {
  const Session2Class({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Session 2 Screen"),
      ),
      body: ListView(
        children: [
          Text("ListView"),
          Container(
            color: Colors.amber,
            height: MediaQuery.of(context).size.height / 3,
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            color: Colors.amber,
            height: MediaQuery.of(context).size.height / 3,
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            color: Colors.amber,
            height: MediaQuery.of(context).size.height / 3,
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            color: Colors.amber,
            height: MediaQuery.of(context).size.height / 3,
          )
        ],
      ),
    );
  }
}
