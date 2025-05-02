import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class LiquidPullClass extends StatefulWidget {
  const LiquidPullClass({super.key});

  @override
  State<LiquidPullClass> createState() => _LiquidPullClassState();
}

class _LiquidPullClassState extends State<LiquidPullClass> {
  int listLength = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Liquid Pull Refresh"),
        ),
        body: LiquidPullToRefresh(
          backgroundColor: Colors.green,
          height: 200,
          springAnimationDurationInMilliseconds: 5000,
          // animSpeedFactor: 10.0,
          color: Colors.green.shade200,
          onRefresh: () async {
            setState(() {
              listLength++;
            });
          },
          child: ListView.builder(
              itemCount: listLength,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Virat Kohli"),
                  subtitle: Text("Indian Cricketer"),
                  trailing: Icon(Icons.arrow_forward_ios),
                );
              }),
        ));
  }
}
