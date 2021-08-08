import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

void main() {
  // Pass in object here
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// Persistent
class _MyAppState extends State<MyApp> {
  var _questionIdx = 0;
  final questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 20},
        {'text': 'Green', 'score': 30}
      ]
    },
    {
      'questionText': 'What\'s your favourite food?',
      'answers': [
        {'text': 'Pizza', 'score': 10},
        {'text': 'Rajma', 'score': 10},
        {'text': 'Dosa', 'score': 10},
        {'text': 'Palak Paneer', 'score': 10},
        {'text': 'Momos', 'score': 10},
      ]
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIdx = _questionIdx + 1;
    });
    print(_questionIdx);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: (_questionIdx < questions.length)
            ? Quiz(questions, _questionIdx, _answerQuestion)
            : Result(),
      ),
    );
  }
}
