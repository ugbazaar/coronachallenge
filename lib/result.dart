import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);
  // This is not a function, but a property that is calculated at runtime
  String get resultPhrase {
    var text = 'Congraulations!\n';
    if (resultScore < 5) {
      text += 'You are a monkey!';
    } else if (resultScore < 10) {
      text += 'You are a donkey!';
    } else if (resultScore < 15) {
      text += 'You are an ape!';
    } else if (resultScore < 15) {
      text += 'You are a cow!';
    } else if (resultScore < 20) {
      text += 'You are a bull!';
    } else if (resultScore < 25) {
      text += 'You are a cat!';
    } else if (resultScore < 30) {
      text += 'You are a tiger!';
    } else if (resultScore < 35) {
      text += 'You are a lion!';
    } else if (resultScore < 40) {
      text += 'You are a dino!';
    } else {
      text += 'You are from Mars!';
    }
    return text + '\nScore: ' + resultScore.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            color: Colors.lightGreenAccent,
            child: Text('Play Again'),
            onPressed: resetQuiz,
          ),
        ],
      ),
    );
  }
}
