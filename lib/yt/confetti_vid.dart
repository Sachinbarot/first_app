import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class ConfettiVid extends StatefulWidget {
  ConfettiVid({super.key});

  @override
  State<ConfettiVid> createState() => _ConfettiVidState();
}

class _ConfettiVidState extends State<ConfettiVid> {
  ConfettiController _controller = ConfettiController();

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
            confettiController: _controller,
            maxBlastForce: 100,
            blastDirectionality: BlastDirectionality.explosive,
            numberOfParticles: 50,
            shouldLoop: false,
            colors: [Colors.green, Colors.black],
            gravity: 0.3,
            blastDirection: 180,
            child: Text("We are celebrating"),
          ),
          Divider(),
          ElevatedButton(
            child: Text("Celebrate"),
            onPressed: () {
              setState(() {
                _controller.play();
              });
            },
          )
        ],
      ),
    );
  }
}
