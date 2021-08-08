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
      'answers': ['Red', 'Green', 'Blue']
    },
    {
      'questionText': 'What\'s your favourite food?',
      'answers': ['Pizza', 'Rajma', 'Dosa', 'Palak Paneer', 'Momos']
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
