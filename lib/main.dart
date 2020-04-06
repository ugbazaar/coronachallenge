import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Corona Time Day 3!'),
        ),
        body: QuizCard(),
      ),
    );
  }
}

class QuizCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizCardState();
  }
}

class _QuizCardState extends State<QuizCard> {
  final questions = [
    {
      'question': 'Name this frozen lake:',
      'options': ['Tilicho', 'Shey Phoksundo', 'It\'s not a lake!', 'Rara'],
      'media':
          'https://static.ugbazaar.com/uploads/quiz/question/medium/62-name-this-frozen-lake.jpeg'
    },
    {
      'question': 'What is the color of sky?',
      'options': ['Red', 'Yellow', 'Blue', 'Green'],
      'media': null
    },
    {
      'question': 'Name this lake:',
      'options': ['Phewa', 'Begnas', 'Gokyo', 'Shey Phoksundo'],
      'media':
          'https://static.ugbazaar.com/uploads/quiz/question/medium/63-name-this-lake.jpeg'
    },
    {
      'question': 'Your ancestors are apes?',
      'options': ['True', 'False'],
      'media': null
    },
    {
      'question': 'Identify this popular dada:',
      'options': ['Silung Dada', 'Kanyam Dada', 'Love Dada', 'Kakani Dada'],
      'media':
          'https://static.ugbazaar.com/uploads/quiz/question/medium/60-name-this-popular-dada.jpeg'
    },
    {
      'question': 'Name this popular tourist destination:',
      'options': ['Kuri', 'Jiri', 'Tori', 'Mori'],
      'media':
          'https://static.ugbazaar.com/uploads/quiz/question/medium/53-name-this-popular-destination.jpeg'
    }
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = (_questionIndex + 1) % questions.length;
    });
    print('Answered Question Number ' + (_questionIndex + 1).toString());
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(_questionIndex, questions[_questionIndex]['question'],
          questions[_questionIndex]['media']),
      ...(questions[_questionIndex]['options'] as List<String>).map((option) {
        return Answer(_answerQuestion, option);
      }).toList(),
    ]);
  }
}
