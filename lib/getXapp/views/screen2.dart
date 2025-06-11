import 'package:flutter/material.dart';

class Screen2Class extends StatelessWidget {
  const Screen2Class({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2'),
      ),
      body: Center(
        child: Text("Screen 2"),
      ),
    );
  }
}
