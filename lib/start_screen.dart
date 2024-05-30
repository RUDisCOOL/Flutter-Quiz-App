import "package:flutter/material.dart";

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Opacity(
          //   opacity: 0.7,
          //   child: Image.asset(
          //     "assets/images/quiz-logo.png",
          //     width: 358,
          //   ),
          // ),
          Image.asset(
            "assets/images/quiz-logo.png",
            color: const Color.fromARGB(160, 255, 255, 255),
            width: 358,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Learn Flutter the fun way",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.indigo.shade400,
              foregroundColor: Colors.white,
              elevation: 7,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
              ),
            ),
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              "Start the Quiz",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
