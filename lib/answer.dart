import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final answers = [
    ['Maybe', 'Yes', 'Absolutely Yes!', 'Fuck Yeah!'],
    ['Uneducated', 'Jungle Pass', 'Street Pass', 'Matric Fail'],
    ['50000', '60000', '70000', '80000'],
    ['20', '30', '40', '50']
  ];

  final int questionIndex;
  final int answerIndex;

  Answer(this.questionIndex, this.answerIndex);

  @override
  Widget build(BuildContext context) {
    return Text(answers[questionIndex][answerIndex]);
  }
}
