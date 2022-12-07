import 'package:flutter/material.dart';

class resultScreenWidget extends StatelessWidget {

  final int totalScore;
  final int totalMcqs;
  final VoidCallback resetQuiz;

  resultScreenWidget({this.totalScore, this.totalMcqs, this.resetQuiz});

  String getPhrase (int score) {
      String phrase;
      double percentage = (totalScore * 100.0) / totalMcqs;
      if (percentage >= 75) {
        phrase = "You got Distinction";
      } else if (percentage >= 60) {
        phrase = "You got First Class";
      } else if (percentage >= 45) {
        phrase = "You got Second Class";
      } else {
        phrase = "You are fail";
      }
      return phrase;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            SizedBox(height: 200),
            Container(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.yellow,
                      width: 3
                  )
              ),
              child: Text(
                '$totalScore / $totalMcqs',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              getPhrase(totalScore),
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.lightGreenAccent[400]
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: resetQuiz,
          label: Text('Reset Quiz'),
          backgroundColor: Colors.grey[900],
      ),
      backgroundColor: Colors.grey[600],
    );
  }
}
