import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String singleQuestionA;

  Questions({required this.singleQuestionA});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(15.0),
      child: Text(
        singleQuestionA,
        style: TextStyle(
          fontSize: 30,
        ),
      ),
    );
  }
}
