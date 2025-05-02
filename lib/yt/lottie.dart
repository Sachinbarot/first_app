import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Lottiescreen extends StatefulWidget {
  const Lottiescreen({super.key});

  @override
  State<Lottiescreen> createState() => _LottiescreenState();
}

class _LottiescreenState extends State<Lottiescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lottie Animations"),
      ),
      body: Center(
        child: Lottie.asset("assets/loading.json", animate: true),
      ),
    );
  }
}
