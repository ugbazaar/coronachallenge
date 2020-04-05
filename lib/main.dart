// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Corona Time Day 2!'),
        ),
        body: QuizCard(),
      ),
    );
  }
}

class QuizCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return QuizCardState();
  }
}

class QuizCardState extends State<QuizCard> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = (questionIndex + 1) % 4;
    });

    print('Answered Question Number ' + (questionIndex + 1).toString());
  }

  var message =
      'My brother told me a month ago how Corona will be the fall of this government. I did not understand then.' +
          'But today I witness wrong decisions, again and again, until the price we have to pay will be irresversible.' +
          '\n\nI hope, then, we will rise rise beyond the parties and demand things for ourselves than for the party leaders!';
  var questions = [
    'Does Nepal need a directly elected Prime Minister?',
    'What is the median education qualification of our Ministers?',
    'How much is the salry of a Mininster?',
    'How many years would it take with the salary of Minister to build a house?'
  ];

  var answers = [
    ['Maybe', 'Yes', 'Absolutely Yes!', 'Fuck Yeah!'],
    ['Uneducated', 'Jungle Pass', 'Street Pass', 'Metric Fail'],
    ['50000', '60000', '70000', '80000'],
    ['20', '30', '40', '50']
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text('Question ' +
          (questionIndex + 1).toString() +
          ': ' +
          questions[questionIndex]),
      RaisedButton(
        child: Text(answers[questionIndex][0]),
        onPressed: answerQuestion,
      ),
      RaisedButton(
        child: Text(answers[questionIndex][1]),
        onPressed: answerQuestion,
      ),
      RaisedButton(
        child: Text(answers[questionIndex][2]),
        onPressed: answerQuestion,
      ),
      RaisedButton(
        child: Text(answers[questionIndex][3]),
        onPressed: answerQuestion,
      )
    ]);
  }
}
