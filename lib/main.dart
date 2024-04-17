import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: SafeArea(
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
                  ElevatedButton(
                    onPressed: () {
                      print('Hello World!');
                    },
                    child: const Text(
                      'Start Quiz',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
