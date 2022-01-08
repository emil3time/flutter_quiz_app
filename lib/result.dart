import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int scoreA;
  Function buttonResetA;
  Result({required this.scoreA, required this.buttonResetA});

  String get resultPrompt {
    String resultPrompt;
    if (scoreA <= 10) {
      resultPrompt = 'low score';
    } else if (scoreA <= 20) {
      resultPrompt = 'medium score';
    } else if (scoreA <= 30) {
      resultPrompt = 'heigh score';
    } else {
      resultPrompt = 'AWESOME!!!';
    }
    return resultPrompt;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          resultPrompt,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.amber)),
          onPressed: () => buttonResetA(),
          child: Text(
            'START AGAIN',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
