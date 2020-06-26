import 'package:flutter/material.dart';
import 'package:project_2/result.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Who has won the maximum number of Olympics medals?',
      'answers': [
        {'text': 'Lsrisa Latynina', 'score': 0},
        {'text': 'Michael Phelps', 'score': 1},
        {'text': 'Marit Bjorgen', 'score': 0},
        {'text': 'Trischa Zorn', 'score': 0},
      ],
    },
    {
      'questionText': 'What does a cartographer study?',
      'answers': [
        {'text': 'Cartesian Plane', 'score': 0},
        {'text': 'Soil', 'score': 0},
        {'text': 'Coins', 'score': 0},
        {'text': 'Maps', 'score': 1},
      ],
    },
    {
      'questionText':
          'Who is the first Indian actor to receive the prestigious Malaysian title,\'The Daluk\', in 2008?',
      'answers': [
        {'text': 'Aamir Khan', 'score': 0},
        {'text': 'Ajay Devgn', 'score': 0},
        {'text': 'Akshay Kumar', 'score': 0},
        {'text': 'Shah Rukh Khan', 'score': 1},
      ],
    },
    {
      'questionText':
          'In the hermitage of which sage was Shakuntala brought up?',
      'answers': [
        {'text': 'Kanva', 'score': 1},
        {'text': 'Agastya', 'score': 0},
        {'text': 'Dronacharya', 'score': 0},
        {'text': 'Vishwa', 'score': 0},
      ],
    },
    {
      'questionText':
          'In which book would you come across the floating island of Laputa and the land of the Houyhnhnms?',
      'answers': [
        {'text': 'Kidnapped', 'score': 0},
        {'text': 'Robinson Crusoe', 'score': 0},
        {'text': 'Gulliver\'s Travel', 'score': 1},
        {'text': 'Kadambari', 'score': 0},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(
      () {
        _questionIndex = 0;
        _totalScore = 0;
      },
    );
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(
      () {
        _questionIndex++;
        if (_questionIndex < _questions.length) {
          print('We have more questions');
        } else {
          print('No more questions');
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'General Knowledge Quiz',
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.deepOrange[300],
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(
                _totalScore,
                _resetQuiz,
              ),
      ),
    );
  }
}
