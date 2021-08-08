import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  int totalScore;

  Result(this.totalScore);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Your score is "+totalScore.toString()));
  }
}
