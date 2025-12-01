import 'personality.dart';

class QuizQuestion {
  QuizQuestion(this.text, this.answers, this.answerPersonalities);

  final String text;
  final List<String> answers;
  final List<Personality> answerPersonalities;

  // Returns list of maps {answer, personality} shuffled
  List<Map<String, Object>> getShuffledAnswersWithPersonality() {
    final combined = List.generate(
      answers.length,
          (i) => {'answer': answers[i], 'personality': answerPersonalities[i]},
    );
    combined.shuffle();
    return combined;
  }
}
