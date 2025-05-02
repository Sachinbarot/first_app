import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';

class QuizCompletionScreen extends StatefulWidget {
  final int score;
  final int totalQuestions;
  final VoidCallback onRestart;
  final VoidCallback onHome;

  const QuizCompletionScreen({
    Key? key,
    required this.score,
    required this.totalQuestions,
    required this.onRestart,
    required this.onHome,
  }) : super(key: key);

  @override
  _QuizCompletionScreenState createState() => _QuizCompletionScreenState();
}

class _QuizCompletionScreenState extends State<QuizCompletionScreen> {
  late ConfettiController _confettiController;

  @override
  void initState() {
    super.initState();
    _confettiController =
        ConfettiController(duration: const Duration(seconds: 3));
    _confettiController.play();
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/keplerassets/Logo.png",
                  height: MediaQuery.of(context).size.height / 9,
                ),
                SizedBox(height: 40),
                Text(
                  'Quiz Completed!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  'Your Score: ${widget.score} / ${widget.totalQuestions}',
                  style: TextStyle(fontSize: 20, color: Colors.green),
                ),
                SizedBox(height: 30),
                TextButton(
                  onPressed: widget.onHome,
                  child: Text('Go to Home'),
                ),
              ],
            ),
          ),
          ConfettiWidget(
            confettiController: _confettiController,
            blastDirectionality: BlastDirectionality.explosive,
            shouldLoop: false,
            colors: [Colors.blue, Colors.red, Colors.green, Colors.orange],
          ),
        ],
      ),
    );
  }
}
