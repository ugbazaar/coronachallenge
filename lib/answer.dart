import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final Function selectHandler;

  Answer(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 0),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.lightBlue[300],
        child: Text(answer),
        onPressed: selectHandler,
      ),
    );
  }
}
