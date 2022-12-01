import 'package:flutter/material.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State <StatefulWidget> createState() {
    return QuizAppState();
  }
}

class QuizAppState extends State <QuizApp> {
  int mcqIndex = 0;

  var mcqList = [
    'Which is the smallest state in India ?',
    'What is the capital of Maharashtra ?',
    'Which is a national animal of India ?'
  ];

  void optionSelected(int optionNumber) {
    setState(() {
      mcqIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(mcqList[mcqIndex]),
              ElevatedButton(
                child: Text('Option 1'),
                onPressed: () => optionSelected(1)
              ),
              ElevatedButton(
                child: Text('Option 2'),
                  onPressed: () => optionSelected(2)
              ),
              ElevatedButton(
                child: Text('Option 3'),
                  onPressed: () => optionSelected(3)
              ),
              ElevatedButton(
                child: Text('Option 4'),
                onPressed: () => optionSelected(4)
              )
            ],
          ),
        ),
      ),
    );
  }
}