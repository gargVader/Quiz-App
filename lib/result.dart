import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int totalScore;
  VoidCallback _resetQuestion;

  Result(this.totalScore, this._resetQuestion);

  String get resultPhrase {
    String resultText;
    if (totalScore <= 20) {
      resultText = 'Poor score';
    } else {
      resultText = 'Well done!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        FlatButton(
          child: Text('Reset'),
          onPressed: _resetQuestion,
          textColor: Colors.blue,
        ),
      ],
    ));
  }
}
