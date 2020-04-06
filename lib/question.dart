import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final int questionIndex;

  final questions = [
    'Name this frozen lake:',
    'Name this lake:',
    'Identify this popular dada:',
    'Name this popular tourist destination:'
  ];

  final images = [
    'https://static.ugbazaar.com/uploads/quiz/question/medium/62-name-this-frozen-lake.jpeg',
    'https://static.ugbazaar.com/uploads/quiz/question/medium/63-name-this-lake.jpeg',
    'https://static.ugbazaar.com/uploads/quiz/question/medium/60-name-this-popular-dada.jpeg',
    'https://static.ugbazaar.com/uploads/quiz/question/medium/53-name-this-popular-destination.jpeg'
  ];

  Question(this.questionIndex);

  @override
  Widget build(BuildContext context) {
    var formattedQuestion = 'Question ' +
        (questionIndex + 1).toString() +
        ': ' +
        questions[questionIndex];

    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          margin: EdgeInsets.all(15),
          child: Text(
            formattedQuestion,
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
        ),
      Image.network(images[questionIndex]),
      ],
    );
  }
}
