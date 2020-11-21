import 'package:flutter/material.dart';
import 'package:flutter_basics/quiz.dart';
import 'package:flutter_basics/result.dart';

// void main() {
//   runApp(MyBasicApp());
// }

void main() async => runApp(MyBasicApp());

class MyBasicApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyBasicAppState();
}

class _MyBasicAppState extends State<MyBasicApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);
    });
  }

  void _resetQuestions() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final _questions = [
    {
      'questionText': 'What\'s your favourite color?',
      'answer': [
        {'text': 'Black', "score": 10},
        {'text': 'Red', "score": 5},
        {'text': 'Green', "score": 3},
        {'text': 'Yellow', "score": 1},
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answer': [
        {'text': 'Dog', "score": 10},
        {'text': 'Cat', "score": 9},
        {'text': 'Lion', "score": 1},
        {'text': 'Giraffe', "score": 2}
      ]
    },
    {
      'questionText': 'What\'s your favourite game?',
      'answer': [
        {'text': 'Assassin\'s Creed', "score": 7},
        {'text': 'Prince of Persia', "score": 3},
        {'text': 'Candy Crush', "score": 5},
        {'text': 'Clash of Clans', "score": 10},
      ]
    },
  ];
  List<String> hey = ['Hello'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App (Personality check)"),
          centerTitle: true,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(
                resetQuestion: _resetQuestions,
                resultScore: _totalScore,
              ),
      ),
    );
  }
}
