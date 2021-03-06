import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/quizz.dart';

import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _index = 0;
  int _score = 0;
  // int yourPreciousPoints = 0;

  Function? nextPageAndScore(int yourPreciousPoints) {
    setState(() {
      _index = _index + 1;
      _score = _score + yourPreciousPoints;
      print(_index);
    });
    if (_index < Quizz.questions.length && _index <= 2) {
      print('I have more questions for You!');
    } else if (_index == Quizz.questions.length - 1) {
      print('This is last question!');
    } else {
      print('well done!');
      print(_score);
    }
  }

  Function? buttonReset() {
    setState(() {
      _index = 0;
      _score = 0;
      print(_index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is AppBar Wigget!'),
        ),
        body: _index < Quizz.questions.length
            ? Quizz(indexA: _index, nextPageAndScoreA: nextPageAndScore)
            : Result(
                scoreA: _score,
                buttonResetA: buttonReset,
              ),
      ),
    );
  }
}
