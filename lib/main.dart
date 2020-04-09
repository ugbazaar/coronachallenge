import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  final _questions = const [
    {
      'question': 'What is your favorite color?',
      'options': [
        {'value': 'Red', 'point': 10},
        {'value': 'Green', 'point': 5},
        {'value': 'Blue', 'point': 2},
        {'value': 'None', 'point': 1}
      ],
      'media': null
    },
    {
      'question': 'Which is your favorite wallet?',
      'options': [
        {'value': 'Commission', 'point': 5},
        {'value': 'BigMoney', 'point': 2},
        {'value': 'eTewa', 'point': 10},
        {'value': 'OnlyCrore', 'point': 1}
      ],
      'media': null
    },
    {
      'question': 'How many times have you been to Singha Durbar in 2019?',
      'options': [
        {'value': 'More than 10.', 'point': 10},
        {'value': 'More than 5', 'point': 5},
        {'value': 'Once', 'point': 2},
        {'value': 'Never', 'point': 1}
      ],
      'media': null
    },
    {
      'question': 'Whom do you think should get Karuna Blessing, first',
      'options': [
        {'value': 'KP Oli', 'point': 10},
        {'value': 'Ishwor Pokharel', 'point': 10},
        {'value': 'Yogesh Bhattarai', 'point': 0},
        {'value': 'Biddhya Bhandari', 'point': 10},
      ],
      'media': null
    },
    {
      'question':
          'How much was the payment gateway bought for by Nepal government in 2018 to make it national payment gateway?',
      'options': [
        {'value': '25 crore', 'point': 10},
        {'value': '15 crore', 'point': 5},
        {'value': '5 crore', 'point': 2},
        {'value': '1 crore', 'point': 1}
      ],
      'media': null
    },
    {
      'question': 'Which is your favorite hangout spot?',
      'options': [
        {'value': 'Baluwatar', 'point': 10},
        {'value': 'Commsiontar', 'point': 10},
        {'value': 'Sigha Durbar', 'point': 5},
        {'value': 'Balkot', 'point': 1}
      ],
      'media': null
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    print('Answered Question Number ' + (_questionIndex + 1).toString());
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Which political mafia of Nepal are you?',
            textAlign: TextAlign.center,
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questionIndex: _questionIndex,
                questions: _questions,
                answerQuestion: _answerQuestion)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
