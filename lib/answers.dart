import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  Function nextPageAndScoreB;
  final String answerText;
  Answers({required this.nextPageAndScoreB, required this.answerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => nextPageAndScoreB(),
        child: Text(answerText),
      ),
    );
  }
}
