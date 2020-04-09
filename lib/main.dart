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
      'question': 'Name this frozen lake:',
      'options': [
        {'value': 'Tilicho', 'point': 10},
        {'value': 'Shey Phoksundo', 'point': 5},
        {'value': 'It\'s not a lake!', 'point': 2},
        {'value': 'Rara', 'point': 1}
      ],
      'media':
          'https://static.ugbazaar.com/uploads/quiz/question/medium/62-name-this-frozen-lake.jpeg'
    },
    {
      'question': 'What is the color of sky?',
      'options': [
        {'value': 'Red', 'point': 10},
        {'value': 'Yellow', 'point': 5},
        {'value': 'Blue', 'point': 2},
        {'value': 'Green', 'point': 1}
      ],
      'media': null
    },
    {
      'question': 'Name this lake:',
      'options': [
        {'value': 'Phewa', 'point': 10},
        {'value': 'Begnas', 'point': 5},
        {'value': 'Gokyo', 'point': 2},
        {'value': 'Shey Phoksundo', 'point': 1}
      ],
      'media':
          'https://static.ugbazaar.com/uploads/quiz/question/medium/63-name-this-lake.jpeg'
    },
    {
      'question': 'Your ancestors are apes?',
      'options': [
        {'value': 'True', 'point': 10},
        {'value': 'False', 'point': 0},
      ],
      'media': null
    },
    {
      'question': 'Identify this popular dada:',
      'options': [
        {'value': 'Silung Dada', 'point': 10},
        {'value': 'Kanyam Dada', 'point': 5},
        {'value': 'Love Dada', 'point': 2},
        {'value': 'Kakani Dada', 'point': 1}
      ],
      'media':
          'https://static.ugbazaar.com/uploads/quiz/question/medium/60-name-this-popular-dada.jpeg'
    },
    {
      'question': 'Name this popular tourist destination:',
      'options': [
        {'value': 'Kuri', 'point': 10},
        {'value': 'Jiri', 'point': 5},
        {'value': 'Tori', 'point': 2},
        {'value': 'Mori', 'point': 1}
      ],
      'media':
          'https://static.ugbazaar.com/uploads/quiz/question/medium/53-name-this-popular-destination.jpeg'
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
          title: Text('Corona Time Day 4!'),
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
