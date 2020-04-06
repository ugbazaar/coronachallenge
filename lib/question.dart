import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final message =
      'My brother told me a month ago how Corona will be the fall of this government. I did not understand then.' +
          'But today I witness wrong decisions, again and again, until the price we have to pay will be irresversible.' +
          '\n\nI hope, then, we will rise rise beyond the parties and demand things for ourselves than for the party leaders!';

  final int index;
  final String question;
  final String media;

  Question(this.index, this.question, this.media);

  @override
  Widget build(BuildContext context) {
    var formattedQuestion =
        'Question ' + (index + 1).toString() + ': ' + question;

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
        if (media != null) Image.network(media),
      ],
    );
  }
}
