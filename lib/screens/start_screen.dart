import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final VoidCallback startQuiz;
  const StartScreen(this.startQuiz, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text appears first
          const Text(
            "Start your personality test!",
            style: TextStyle(fontSize: 24, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),

          // Emojis in rows, 2 per row
          Column(
            children: const [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('📅', style: TextStyle(fontSize: 50)),
                  SizedBox(width: 10),
                  Text('💖', style: TextStyle(fontSize: 50)),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('🧠', style: TextStyle(fontSize: 50)),
                  SizedBox(width: 10),
                  Text('🗺️', style: TextStyle(fontSize: 50)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 30),

          // Start quiz button
          ElevatedButton(
            onPressed: startQuiz,
            child: const Text('Start Quiz'),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
