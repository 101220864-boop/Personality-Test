import '../models/quiz_question.dart';
import '../models/personality.dart';

final questions = [
  QuizQuestion(
    'How do you approach a difficult decision?',
    [
      'Analyze all options logically',
      'Go with what feels right emotionally',
      'Make a checklist and plan it out',
      'Take a leap and deal with results later',
    ],
    [
      Personality.Thinker,
      Personality.Feeler,
      Personality.Planner,
      Personality.Adventurer,
    ],
  ),
  QuizQuestion(
    'What excites you the most?',
    [
      'Solving complex problems',
      'Connecting deeply with others',
      'Creating a clear path to your goals',
      'Exploring something new',
    ],
    [
      Personality.Thinker,
      Personality.Feeler,
      Personality.Planner,
      Personality.Adventurer,
    ],
  ),

];
