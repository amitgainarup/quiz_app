import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';

class Answers extends StatelessWidget {
final VoidCallback selectHandler;
final String answerText;
Answers(this.selectHandler, this.answerText);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: RaisedButton(
      child: 
      Text(answerText),
      onPressed: selectHandler,
      color: Colors.green,
      textColor: Colors.white,
      ),
    );
  }
}