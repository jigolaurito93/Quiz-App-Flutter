import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = "start-screen";

  void switchScreen() {
    setState(() {
      activeScreen = "quiz-screen";
    });
  }

  void chooseAnswer(answer) {
    selectedAnswers.add(answer);
    setState(() {
      print(selectedAnswers);
      if (selectedAnswers.length == questions.length) {
        // selectedAnswers = [];
        activeScreen = "results-screen";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: activeScreen == "start-screen"
            ? StartScreen(switchScreen)
            : activeScreen == "quiz-screen"
                ? QuestionsScreen(
                    onSelectAnswer: chooseAnswer,
                  )
                : activeScreen == "results-screen"
                    ? ResultsScreen(selectedAnswers)
                    : Container(),
      ),
    );
  }
}
