import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String myQuestion;

  Questions(this.myQuestion);

  @override
  Widget build(BuildContext context) {
    return Text(myQuestion);
  }
}
