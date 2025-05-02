import 'package:first_app/keplerapp/appbarclipper.dart';
import 'package:first_app/keplerapp/bottomnavbar.dart';
import 'package:first_app/keplerapp/success.dart';
import 'package:first_app/keplerapp/utills.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';

class QuestionClass extends StatefulWidget {
  const QuestionClass({super.key});

  @override
  State<QuestionClass> createState() => _QuestionClassState();
}

class _QuestionClassState extends State<QuestionClass> {
  int? _selectedOption;
  int _currentQuestionIndex = 0;
  int _score = 0;
  static dynamic questionsMap = [
    {
      "id": 1,
      "question":
          "Which of the following is NOT a major domain of child development?",
      "Answer": "Financial development",
      "selectedOption": null,
      "options": [
        "Physical development",
        "Cognitive development",
        "Financial development",
        "Social and emotional development"
      ]
    },
    {
      "id": 2,
      "question": "What is the primary function of the brain?",
      "Answer": "To control the body's functions",
      "selectedOption": null,
      "options": [
        "To control the body's functions",
        "To control the body's emotions",
        "To control the body's senses",
        "To control the body's movement"
      ]
    },
    {
      "id": 3,
      "question": "At what age do most children start walking independently?",
      "Answer": "12 months",
      "selectedOption": null,
      "options": ["6 months", "12 months", "18 months", "24 months"]
    },
    {
      "id": 4,
      "question":
          "Which factor has the most significant impact on a child's growth and development?",
      "Answer": "All of the above",
      "selectedOption": null,
      "options": ["Genetics", "Nutrition", "Environment", "All of the above"]
    },
    {
      "id": 5,
      "question":
          "What is the term used to describe a child's ability to understand and use language?",
      "Answer": "To control the body's functions",
      "selectedOption": null,
      "options": [
        "Motor skills",
        "Linguistic intelligence",
        "Cognitive development",
        "Language acquisition"
      ]
    },
  ];
  void _submitAnswer() {
    if (_selectedOption == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please select an answer!")),
      );
      return;
    }

    // ScaffoldMessenger.of(context).showSnackBar(
    //   SnackBar(
    //       content: Text(
    //           "You selected: ${questionsMap[_currentQuestionIndex]['options'][_selectedOption!]}")),
    // );

    if (_currentQuestionIndex < questionsMap.length - 1) {
      setState(() {
        _currentQuestionIndex++;
        _selectedOption = null;
      });
    } else {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => QuizCompletionScreen(
                score: _score,
                totalQuestions: 5,
                onHome: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) => BottomnavbarClass()),
                    (route) => false,
                  );
                },
                onRestart: () {
                  print("Nothing");
                },
              )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questions"),
        // backgroundColor: ColorTheme.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Q${_currentQuestionIndex + 1}: ${questionsMap[_currentQuestionIndex]['question']}",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ...List.generate(
                questionsMap[_currentQuestionIndex]['options'].length, (index) {
              return RadioListTile<int>(
                title:
                    Text(questionsMap[_currentQuestionIndex]['options'][index]),
                value: index,
                groupValue: _selectedOption,
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value;
                    print(
                        questionsMap[_currentQuestionIndex]["options"][index]);
                    if (questionsMap[_currentQuestionIndex]["options"][index] ==
                        questionsMap[_currentQuestionIndex]["Answer"]) {
                      _score++;
                      print(_score);
                    }
                  });
                },
              );
            }),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: _submitAnswer,
                child: Text(_currentQuestionIndex < questionsMap.length - 1
                    ? "Next"
                    : "Finish"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
