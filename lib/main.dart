  import 'package:flutter/material.dart';

import 'resultScreen/resultScreenWidget.dart';
import 'mcqFolder/mcqWidget.dart';
import 'mcqFolder/mcqList.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State <StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State <QuizApp> {
  int _mcqIndex = 0;
  int _totalScore = 0;

  void _optionSelected(int score) {
    _totalScore += score;
    setState(() {
      _mcqIndex++;
    });
  }

  void _resetQuiz () {
    setState(() {
      _mcqIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[700],
        appBar: AppBar(
          title: Text('QUIZ APP'),
          backgroundColor: Colors.grey[800],
          centerTitle: true
        ),
        body: _mcqIndex < mcqList.length
          ? mcqWidget(
              mcqIndex: _mcqIndex,
              mcqList: mcqList,
              optionSelectorFunction: _optionSelected,
          )
          : resultScreenWidget(totalScore: _totalScore, totalMcqs: mcqList.length, resetQuiz: _resetQuiz)
      ),
    );
  }
}