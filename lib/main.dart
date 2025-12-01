import 'package:flutter/material.dart';
import 'screens/start_screen.dart';
import 'screens/questions_screen.dart';
import 'screens/result_screen.dart';
import 'data/questions.dart';
import 'models/personality.dart';

void main() {
  runApp(const PersonalityTestApp());
}

class PersonalityTestApp extends StatefulWidget {
  const PersonalityTestApp({super.key});

  @override
  State<PersonalityTestApp> createState() => _PersonalityTestAppState();
}

class _PersonalityTestAppState extends State<PersonalityTestApp> {
  bool quizStarted = false;
  int currentQuestionIndex = 0;
  final Map<Personality, int> scores = {};

  void startQuiz() {
    setState(() {
      quizStarted = true;
      currentQuestionIndex = 0;
      scores.clear();
    });
  }

  void answerQuestion(Personality personality) {
    scores[personality] = (scores[personality] ?? 0) + 1;
    setState(() {
      currentQuestionIndex++;
    });
  }

  Personality getResult() {
    return scores.entries.reduce((a, b) => a.value >= b.value ? a : b).key;
  }

  @override
  Widget build(BuildContext context) {
    Widget screen;

    if (!quizStarted) {
      screen = StartScreen(startQuiz);
    } else if (currentQuestionIndex < questions.length) {
      screen = QuestionsScreen(
        question: questions[currentQuestionIndex],
        onAnswerSelected: answerQuestion,
      );
    } else {
      screen = ResultScreen(getResult());
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: screen,
      ),
    );
  }
}
