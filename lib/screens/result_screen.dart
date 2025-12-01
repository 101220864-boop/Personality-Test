import 'package:flutter/material.dart';
import '../models/personality.dart';

const personalityEmojis = {
  Personality.Thinker: '🧠',
  Personality.Feeler: '💖',
  Personality.Planner: '📅',
  Personality.Adventurer: '🗺️',
};

class ResultScreen extends StatelessWidget {
  final Personality result;

  const ResultScreen(this.result, {super.key});

  @override
  Widget build(BuildContext context) {
    final emojis = personalityEmojis[result] ?? '';

    // Split emojis into a list of characters for display
    final emojiList = emojis.characters.toList();

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Display emojis in a row
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: emojiList
                .map((e) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(e, style: const TextStyle(fontSize: 50)),
            ))
                .toList(),
          ),
          const SizedBox(height: 20),

          // Personality description
          Text(
            personalityMessages[result] ?? 'Unknown personality',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 22, color: Colors.white),
          ),
          const SizedBox(height: 20),

          // Restart button
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Restart Quiz'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            ),
          ),
        ],
      ),
    );
  }
}
