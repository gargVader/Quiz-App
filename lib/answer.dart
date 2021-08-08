import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback onClick;
  var answerText;

  Answer(this.onClick, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.brown,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: onClick,
      ),
    );
  }
}
