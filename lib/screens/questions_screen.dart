import 'package:flutter/material.dart';
import '../models/quiz_question.dart';
import '../models/personality.dart';

class QuestionsScreen extends StatelessWidget {
  final QuizQuestion question;
  final void Function(Personality) onAnswerSelected;

  const QuestionsScreen({
    required this.question,
    required this.onAnswerSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final shuffledAnswers = question.getShuffledAnswersWithPersonality();

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisSize: MainAxisSize.min, // Make Column only as tall as its content
          crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
          children: [
            Text(
              question.text,
              textAlign: TextAlign.center, // Center text inside
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            ...shuffledAnswers.map(
                  (item) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: ElevatedButton(
                  onPressed: () =>
                      onAnswerSelected(item['personality'] as Personality),
                  child: Text(item['answer'] as String),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
