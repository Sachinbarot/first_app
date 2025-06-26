import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';

class ConfettiVid extends StatefulWidget {
  ConfettiVid({super.key});

  @override
  State<ConfettiVid> createState() => _ConfettiVidState();
}

class _ConfettiVidState extends State<ConfettiVid> {
  final _controller = ConfettiController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Confetti Video"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ConfettiWidget(
            minBlastForce: 5,
            emissionFrequency: 0.2,
            maxBlastForce: 100,
            colors: const [Colors.green, Colors.black],
            blastDirectionality: BlastDirectionality.explosive,
            confettiController: _controller,
          ),
          const Divider(),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _controller.play();
                });
              },
              child: Text("Play Confetti")),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _controller.stop();
                });
              },
              child: Text("Stop Confetti"))
        ],
      ),
    );
  }
}
