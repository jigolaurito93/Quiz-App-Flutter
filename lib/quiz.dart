import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswers = [];
  var activeScreen = "start-screen";

  void switchScreen() {
    setState(() {
      activeScreen = "quiz-screen";
    });
  }

  void chooseAnswer(answer) {
    selectedAnswers.add(answer);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: activeScreen == "start-screen"
              ? StartScreen(switchScreen)
              : QuestionsScreen(
                  onSelectAnswer: chooseAnswer,
                )),
    );
  }
}
