import 'package:flutter/material.dart';

class mcqOptionWidget extends StatelessWidget {

  final Function optionSelectorFunction;
  final List<Object> optionTextScore;

  mcqOptionWidget({this.optionSelectorFunction, this.optionTextScore});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 40,
      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
      padding: EdgeInsets.fromLTRB(5, 3, 5, 3),
      child: ElevatedButton(
        onPressed: () => optionSelectorFunction(optionTextScore[1] as int),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.lightGreen[700])
        ),
        child: Text(
          (optionTextScore[0] as String),
          style: TextStyle(
            fontSize: 20,
            color: Colors.white
          ),
        ),
      ),
    );
  }
}
