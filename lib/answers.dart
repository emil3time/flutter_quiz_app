import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  Function nextIndex;
  String answerText;
  Answers(this.nextIndex, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          nextIndex();
        },
        child: Text(answerText),
      ),
    );
  }
}
