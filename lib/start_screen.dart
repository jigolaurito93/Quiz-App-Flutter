import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

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
              Opacity(
                  opacity: 1.0,
                  child: Image.asset("assets/images/nba-logo.png")),
              const SizedBox(height: 30.0),
              Text(
                "NBA Quiz App",
                textAlign: TextAlign.center,
                style: GoogleFonts.graduate(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.w800),
                ),
              ),
              const SizedBox(height: 30.0),
              OutlinedButton.icon(
                onPressed: () {
                  startQuiz();
                  // print('Hello World!!!');
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
