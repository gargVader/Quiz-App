import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

import 'answer.dart';


class Quiz extends StatelessWidget {

  var questions;
  var _questionIdx;
  VoidCallback _answerQuestion;

  Quiz(this.questions, this._questionIdx,  this._answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[_questionIdx]['questionText'] as String),
        ...(questions[_questionIdx]['answers'] as List<Map<String, Object>>)
            .map((answer) => Answer(_answerQuestion, answer['text']))
      ],
    );
  }

}