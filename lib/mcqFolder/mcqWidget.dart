import 'package:flutter/material.dart';

import 'QuestionOptionsWidget/mcqQuestionWidget.dart';
import 'QuestionOptionsWidget/mcqOptionWidget.dart';

class mcqWidget extends StatelessWidget {

  final int mcqIndex;
  final List<Map<String, Object>> mcqList;
  final Function optionSelectorFunction;

  mcqWidget({this.mcqIndex, this.mcqList, this.optionSelectorFunction});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.yellow, width: 2)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SizedBox(height: 130),
          mcqQuestionWidget(mcqQuestionText : (mcqList[mcqIndex]['questionText'] as String)),
          ...(mcqList[mcqIndex]['optionList'] as List<List<Object>>).map((mcqOption) {
            return mcqOptionWidget(
                optionSelectorFunction: optionSelectorFunction,
                optionTextScore:  mcqOption
            );
          })
          // ... is known as spread operator where it pulls out all
          // the widgets from list and put them outside as a list
        ],
      ),
    );
  }
}
