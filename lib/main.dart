import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

void main() => runApp(Quiz());

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var question = [
    {
      'questionText': 'What is your favorite color?',
      'answer': ['Red', 'Black', 'Yellow', 'Blue']
    },
    {
      'questionText': 'What is your favorite animal?',
      'answer': ['Cow', 'Dog', 'Cat', 'Tiger']
    },
    {
      'questionText': 'What is your favorite sports?',
      'answer': ['Cricket', 'Football', 'Badminton', 'Cram']
    },
    {
      'questionText': 'What is your favorite Laptop?',
      'answer': ['Asus', 'Hp', 'Dell', 'Lenevo']
    },
      {
      'questionText': 'What is your favorite car?',
      'answer': ['Lamborghini', 'Audi', 'BMW', 'Ferrari']
    },
    {
      'questionText': 'What is your favorite phone?',
      'answer': ['Iphone', 'Samsung', 'Xaimoi', 'Realme']
    },
    {
      'questionText': 'What is your favorite watch?',
      'answer': ['Rolex', 'Patek Philippe', 'Audemars Piguet', 'A.Lange & Söhne']
    },
    {
      'questionText': 'What is your favorite clothing brands?',
      'answer': ['Louis Vuittion', 'Gucci', 'Hermes', 'Prada']
    },
    {
      'questionText': '	--------- is the father of computer.',
      'answer': ['Herman Hollerith', 'Ada Byron', 'Blaise Pascal', 'Charles Babbage']
    },
    {
      'questionText': 'A desktop computer is also known as?',
      'answer': ['PC', 'Laptop', 'Mainframe', 'Palmtop']
    },
    {
      'questionText': 'CPU is the --------- of computer.',
      'answer': ['Brain', 'Ear', 'Eye', 'All above these']
    },
    {
      'questionText': '	----------- computer is the most powerful computer.',
      'answer': [' Mainframe', 'Mini', 'Micro', 'Super']
    },
      {
      'questionText': '	----------- is the physical device of a computer system.',
      'answer': ['Program', 'Software', 'Hardware', 'Application']
    },
    {
      'questionText': '	IC stands for?',
      'answer': ['Internal Circuit', 'Internal Computer', 'Integrated Computer', 'Integrated Circuit']
    },
    {
      'questionText': 'Which of the following is not a characteristic of a computer?',
      'answer': ['Speed', 'Intelligence', 'Automation', 'Versatility']
    },
    {
      'questionText': 'Which of the following is not Computer Hardware?',
      'answer': ['Mouse', 'Monitor', 'Printer', ' Antivirus']
    },
    {
      'questionText': '	----------- processing is used in mainframe computer.',
      'answer': ['Parallel', 'Batch', 'Serial', 'Toggle']
    },
    {
      'questionText': 'Computer is a/an ----------',
      'answer': ['battery', 'input device', 'monitoring device', 'electronic device']
    },
    {
      'questionText': 'Abacus was developed by',
      'answer': ['China', 'India', 'America', 'Germany']
    },
    {
      'questionText': 'The first computer was programmed using',
      'answer': ['Assembly language', 'Machine language', 'Source code', 'Object code']
    },
      {
      'questionText': 'The CPU and Primary memory are located on the',
      'answer': ['output device', 'storage device', 'motherboard', 'expansion board']
    },
    {
      'questionText': 'Numeric pad is in the -----------',
      'answer': ['speaker', 'keyboard', 'mouse', 'monitor']
    },
    {
      'questionText': 'FORTRAN is useful in ----------- sector.',
      'answer': [' Office management', 'census analysis', 'business purpose', 'scientific purpose']
    },
    {
      'questionText': '----------- is processed by the computer into information.',
      'answer': ['Data', 'Processor', 'Numbers', 'Input']
    },
    {
      'questionText': '-------- is the mainboard of computer.',
      'answer': ['CPU', 'RAM', 'Motherboard', 'ROM']
    },
  ];
  var _answerIndex = 0;
  void _answerQuestion() {
    setState(() {
      _answerIndex = _answerIndex + 1;
    });
    print(_answerIndex);
    if (_answerIndex < question.length) {
      print('You have more questions.');
    } else {
      print('You have done!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Center(child: Text('Quiz App')),
        ),
        body: Center(
          child: _answerIndex < question.length
              ? Column(
                  children: [
                    Questions(question[_answerIndex]['questionText'] as String),
                    ...(question[_answerIndex]['answer'] as List<String>)
                        .map((answer) {
                      return Answers(_answerQuestion, answer);
                    }),
                  ],
                )
              : Center(
                  child: Text('This quiz is completed'),
                ),
        ),
      ),
    );
  }
}
