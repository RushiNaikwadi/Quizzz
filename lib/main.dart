import 'dart:ffi';

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

class _QuizAppState extends State <QuizApp> {
  int _mcqIndex = 0;

  void _optionSelected() {
    setState(() {
      _mcqIndex++;
      _mcqIndex %= mcqList.length;
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
          children: [
            SizedBox(height: 140),
            mcqQuestionWidget(mcqQuestionText : (mcqList[_mcqIndex]['questionText'] as String)),
            ...(mcqList[_mcqIndex]['optionList'] as List<String>).map((mcqOptionText) {
                return mcqOptionWidget(
                    optionSelectorFunction: _optionSelected,
                    optionText:  mcqOptionText
                );
            })

            // ... is known as spread operator where it pulls out all
            // the widgets from list and put them outside as a list
          ],
        ),
        backgroundColor: Colors.grey[700],
      ),
    );
  }
}