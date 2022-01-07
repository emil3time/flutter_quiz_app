import 'package:flutter/material.dart';

import 'question.dart';
import 'answers.dart';

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

  void _chooseAnswer() {
    setState(() {
      _index = _index + 1;

      print(_index);
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'question': 'what\'s your favorite sport?',
        'answer': ['football', 'carling', ' golf', 'basketball']
      },
      {
        'question': 'what\'s your favorite color?',
        'answer': ['blue', 'red', ' dark', 'pink']
      },
      {
        'question': 'do you like ice creams?',
        'answer': ['yes', 'no']
      },
      {
        'question': 'what\'s your height (cm) ?',
        'answer': ['close 150', ' close to 170', 'close to 190 , close to 200 ']
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is AppBar Wigget!'),
        ),
        body: Column(
          children: [
            // constructor in question.dart Questions class have final field as String ,
            // when dart take value from map I should specify type of that value or use var in class
            Questions(questions[_index]['question'] as String),

            // 1. I use questions List (this is List of 4 maps each map has key<String> nad
            // value(object <String/List>))
            // 2.(questions[_index]['answer'] as List) here I choose key I need and inform Dart
            // about this key is a List
            //3. Now I use map method - to change list to map of objects - Widgets
            //map method take each element of List and use them on Widget - here return on my custom Answers
            //4. Last step - convert map of Widgets into new List! but now I added my new List
            // inside Column children List and I Can't have list inside list so I use ... syntax
            // to extract every index from my new List of Widgets to List of
            //
            ...(questions[_index]['answer'] as List).map((question) {
              return Answers(_chooseAnswer, question);
            }).toList()
          ],
        ),
      ),
    );
  }
}
