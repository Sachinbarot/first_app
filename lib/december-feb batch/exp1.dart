import 'package:flutter/material.dart';

class Exp1 extends StatefulWidget {
  const Exp1({super.key});

  @override
  State<Exp1> createState() => _Exp1State();
}

class _Exp1State extends State<Exp1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful Example'),
        centerTitle: false,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: const [
          Icon(Icons.person_2),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.shopping_cart)
        ],
      ),
      body: Column(
        children: [
          Text("Text 1"),
          Text("Text 1"),
          Text("Text 1"),
          Text("Text 1")
        ],
      ),
    );
  }
}
