import 'package:flutter/material.dart';
import 'answers.dart';
import 'question.dart';

class Quizz extends StatelessWidget {
  static final questions = [
    {
      'question': 'what\'s your favorite sport?',
      'answer': [
        {'yourAnswer': 'football', 'score': 10},
        {'yourAnswer': 'carling', 'score': 10},
        {'yourAnswer': 'golf', 'score': 15},
        {'yourAnswer': 'basketball', 'score': 5}
      ]
    },
    {
      'question': 'what\'s your favorite color?',
      'answer': [
        {'yourAnswer': 'blue', 'score': 10},
        {'yourAnswer': 'red', 'score': 15},
        {'yourAnswer': ' dark', 'score': 20},
        {'yourAnswer': 'pink', 'score': 5}
      ]
    },
    {
      'question': 'do you like ice creams?',
      'answer': [
        {'yourAnswer': 'yes', 'score': 5},
        {'yourAnswer': 'no', 'score': 0}
      ]
    },
    {
      'question': 'what\'s your height (cm) ?',
      'answer': [
        {'yourAnswer': 'close 150', 'score': 0},
        {'yourAnswer': 'close to 170', 'score': 10},
        {'yourAnswer': 'close to 190', 'score': 20},
        {'yourAnswer': 'close to 200', 'score': 15}
      ]
    }
  ];
  int indexA;
  Function nextPageAndScoreA;

  Quizz({
    required this.indexA,
    required this.nextPageAndScoreA,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(singleQuestionA: questions[indexA]['question'] as String),
        ...(questions[indexA]['answer'] as List<Map<String, Object>>)
            .map((question) => Answers(
                nextPageAndScoreB: () => nextPageAndScoreA(question['score']),
                answerText: (question['yourAnswer']) as String))
            .toList()
      ],
    );
  }
}
