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

  void _answerQuestion() {
    // Do nothing
  }

  Answer(this.questionIndex, this.answerIndex);

  @override
  Widget build(BuildContext context) {
  return Container ( 
      margin: EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 0),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.lightBlue[300],
        child: Text(answers[questionIndex][0]),
        onPressed: _answerQuestion,
      ) ,) ;
  }
}
