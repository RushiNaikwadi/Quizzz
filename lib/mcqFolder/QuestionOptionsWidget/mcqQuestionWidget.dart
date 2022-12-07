import 'package:flutter/material.dart';

class mcqQuestionWidget extends StatelessWidget {

  final String mcqQuestionText;
  mcqQuestionWidget({this.mcqQuestionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(20, 0, 20, 15),
      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
      color: Colors.red[700],
      child: Text(
        mcqQuestionText,
        style: TextStyle(
          fontSize: 25,
          color: Colors.white
        ),
        textAlign: TextAlign.center
      ),
    );
  }
}

