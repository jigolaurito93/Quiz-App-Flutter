import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.blue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/quiz-logo.png"),
              const SizedBox(height: 50.0),
              const Text("NBA Quiz App",
                  style: TextStyle(fontSize: 30.0, color: Colors.white)),
              const SizedBox(height: 50.0),
              OutlinedButton.icon(
                onPressed: () {
                  print('Hello World!!!');
                },
                style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.blue,
                    backgroundColor: Colors.white),
                icon: const Icon(Icons.arrow_right_alt),
                label: const Text(
                  'Start Quiz',
                  style: TextStyle(fontSize: 20.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
