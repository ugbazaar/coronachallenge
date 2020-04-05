// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Corona Time Day 1!'),
        ),
        body: MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            print('Card tapped.');
          },
          child: Container(
            width: 300,
            height: 175,
            child: Text('My brother told me a month ago how Corona will be the fall of this government. I did not understand then.' +
                'But today I witness wrong decisions, again and again, until the price we have to pay will be irresversible.' +
                '\n\nI hope, then, we will rise rise beyond the parties and demand things for ourselves than for the party leaders!'),
          ),
        ),
      ),
    );
  }
}
