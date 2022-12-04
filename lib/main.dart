import 'package:flutter/material.dart';

import './mcqQuestionWidget.dart';
import './mcqOptionWidget.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State <StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State <QuizApp> {
  int _mcqIndex = 0;

  var mcqList = [
    {
      'questionText': "Which is the smallest state in India ?",
      'optionList': ["Rajasthan", "Nagaland", "Goa", "Maharashtra"]
    },
    {
      'questionText': "What is the capital of Maharashtra ?",
      'optionList': ["Mumbai", "Nagpur", "Pune", "Nashik"]
    },
    {
      'questionText': "What is India's number in terms of population",
      'optionList': ["1", "3", "4", "2"]
    },
  ];

  void _optionSelected() {
    setState(() {
      _mcqIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
          backgroundColor: Colors.grey[800],
          centerTitle: true
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            mcqQuestionWidget(mcqQuestionText : (mcqList[_mcqIndex]['questionText'] as String)),
            mcqOptionWidget(_optionSelected),
            mcqOptionWidget(_optionSelected),
            mcqOptionWidget(_optionSelected),
            mcqOptionWidget(_optionSelected),
          ],
        ),
        backgroundColor: Colors.grey[700],
      ),
    );
  }
}