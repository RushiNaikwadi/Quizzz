import 'package:flutter/material.dart';

class mcqOptionWidget extends StatelessWidget {

  final VoidCallback optionSelectorFunction;

  mcqOptionWidget(this.optionSelectorFunction);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(5, 1, 5, 1),
      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
      child: ElevatedButton(

        onPressed: () => optionSelectorFunction,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.lightGreen[700])
        ),
        child: Text(
            'Option',
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
    );
  }
}
