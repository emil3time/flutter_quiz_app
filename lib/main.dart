import 'package:flutter/material.dart';

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
  var index = 0;

  void chooseAnswer() {
    setState(() {
      index = index + 1;
      print(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your faworite song?',
      'Do you like ice creams?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is AppBar Wigget!'),
        ),
        body: Column(
          children: [
            Text(questions[index]),
            ElevatedButton(onPressed: chooseAnswer, child: Text(' Answer 1')),
            ElevatedButton(
                onPressed: () => print('Answr 2'), child: Text(' Answer 1')),
            ElevatedButton(
                onPressed: () {
                  // sdjhfuydsg
                  ///skdashy//
                  print('Answr3');
                },
                child: Text(' Answer 1')),
          ],
        ),
      ),
    );
  }
}
