import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String myQuestion;

  Questions(this.myQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(15.0),
      child: Text(
        myQuestion,
        style: TextStyle(
          fontSize: 30,
        ),
      ),
    );
  }
}
