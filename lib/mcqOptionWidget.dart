import 'package:flutter/material.dart';

class mcqOptionWidget extends StatelessWidget {

  final VoidCallback optionSelectorFunction;
  final String optionText;

  mcqOptionWidget({this.optionSelectorFunction, this.optionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 40,
      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
      padding: EdgeInsets.fromLTRB(5, 3, 5, 3),
      child: ElevatedButton(
        onPressed: () => optionSelectorFunction(),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.lightGreen[700])
        ),
        child: Text(
          optionText,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white
          ),
        ),
      ),
    );
  }
}
