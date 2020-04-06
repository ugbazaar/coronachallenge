import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final answers = [
    ['Tilicho', 'Shey Phoksundo', 'It\'s not a lake!', 'Rara'],
    ['Phewa', 'Begnas', 'Gokyo', 'Shey Phoksundo'],
    ['Silung Dada', 'Kanyam Dada', 'Love Dada', 'Kakani Dada'],
    ['Kuri', 'Jiri', 'Tori', 'Mori']
  ];

  final int questionIndex;
  final int answerIndex;

  Answer(this.questionIndex, this.answerIndex);

  @override
  Widget build(BuildContext context) {
    return Text(answers[questionIndex][answerIndex]);
  }
}
