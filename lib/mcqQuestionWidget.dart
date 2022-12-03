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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8))
      ),
      // child: Text(
      //   mcqQuestionText,
      //   style: TextStyle(
      //     fontSize: 35,
      //   ),
      //   textAlign: TextAlign.center
      // ),
      child: ,
      color: Colors.red[600],
    );
  }
}

