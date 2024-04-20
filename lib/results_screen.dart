import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.chosenAnswers, this.restartGame, {super.key});

  final List<String> chosenAnswers;
  final Function() restartGame;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < questions.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i]
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.blue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
                  style: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                QuestionsSummary(getSummaryData()),
                const SizedBox(
                  height: 30.0,
                ),
                TextButton.icon(
                  onPressed: () {
                    restartGame();
                  },
                  icon: const Icon(
                    Icons.refresh,
                    color: Colors.white,
                  ),
                  label: const Text(
                    'Restart Quiz!',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
