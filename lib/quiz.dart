import 'package:flutter/material.dart';
import 'package:quiz_flutter/question_screen.dart';
import 'package:quiz_flutter/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = "start_screen";

  void switchScreen() {
    setState(() {
      activeScreen = "question_screen";
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.indigo,
          child: Center(
            child: activeScreen == "start_screen"
                ? StartScreen(switchScreen)
                : const QuestionScreen(),
          ),
        ),
      ),
    );
  }
}
