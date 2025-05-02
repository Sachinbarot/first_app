import 'package:flutter/material.dart';

class Session4Class extends StatefulWidget {
  const Session4Class({super.key});

  @override
  State<Session4Class> createState() => _Session4ClassState();
}

class _Session4ClassState extends State<Session4Class> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Session 4"),
        ),
        body: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 100,
            addAutomaticKeepAlives: false,
            itemBuilder: (listContext, index) {
              return Text("My Name Is Sachin");
            }));
  }
}
