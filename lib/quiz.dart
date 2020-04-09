import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final Function answerQuestion;

  Quiz({
    @required this.questionIndex,
    @required this.questions,
    @required this.answerQuestion,
  });
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questionIndex, questions[questionIndex]['question'],
          questions[questionIndex]['media']),
      ...(questions[questionIndex]['options'] as List<Map<String, Object>>)
          .map((option) {
        return Answer(() => answerQuestion(option['point']), option['value']);
      }).toList(),
    ]);
  }
}
