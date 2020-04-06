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
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = (_questionIndex + 1) % 4;
    });

    print('Answered Question Number ' + (_questionIndex + 1).toString());
  }

  var message =
      'My brother told me a month ago how Corona will be the fall of this government. I did not understand then.' +
          'But today I witness wrong decisions, again and again, until the price we have to pay will be irresversible.' +
          '\n\nI hope, then, we will rise rise beyond the parties and demand things for ourselves than for the party leaders!';

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(_questionIndex),
      RaisedButton(
        child: Answer(_questionIndex, 0),
        onPressed: _answerQuestion,
      ),
      RaisedButton(
        child: Answer(_questionIndex, 1),
        onPressed: _answerQuestion,
      ),
      RaisedButton(
        child: Answer(_questionIndex, 2),
        onPressed: _answerQuestion,
      ),
      RaisedButton(
        child: Answer(_questionIndex, 3),
        onPressed: _answerQuestion,
      )
    ]);
  }
}
