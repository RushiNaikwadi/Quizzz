import 'package:flutter/material.dart';

class mcqQuestionWidget extends StatelessWidget {

  final String mcqQuestionText;

  mcqQuestionWidget({this.mcqQuestionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      margin: EdgeInsets.fromLTRB(6, 0, 6, 15),
      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
      color: Colors.red[700],
      child: Text(
        // 'Ye',
        mcqQuestionText,
        style: TextStyle(
          fontSize: 30,
          color: Colors.white
        ),
        textAlign: TextAlign.center
      ),
    );
  }
}

