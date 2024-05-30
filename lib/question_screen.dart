import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Question1"),
        ElevatedButton(onPressed: () {}, child: const Text("answer1")),
        ElevatedButton(onPressed: () {}, child: const Text("answer2")),
        ElevatedButton(onPressed: () {}, child: const Text("answer3")),
      ],
    );
  }
}
