import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int totalScore;

  Result(this.totalScore);

  String get resultPhrase{
    String resultText;
    if(totalScore<=20){
      resultText = 'Poor score';
    }else{
      resultText = 'Well done!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      resultPhrase,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30
      ),
    ));
  }
}
