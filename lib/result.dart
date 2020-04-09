import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  void _playAgain() {
    print('Play again clicked!');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Text('Game Over. Your score is not yet computed!'),
        ),
        RaisedButton(
          color: Colors.lightGreenAccent,
          child: Text('Play Again'),
          onPressed: _playAgain,
        )
      ],
    );
  }
}
