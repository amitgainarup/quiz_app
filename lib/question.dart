import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
var questionText;
Questions(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Text(
      questionText,
    style: TextStyle(
      color: Colors.blueAccent,
      fontSize: 32,
      fontFamily: 'IrishGrover',
    ),
    );
  }
}