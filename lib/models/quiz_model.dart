import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

Future<Quiz> fetchQuiz() async {
  final response = await http
      .get('https://www.ugbazaar.com/api/V2/quiz/nepal-geography-quiz-1');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Quiz.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Quiz {
  // final String question;
  // final List<String> options;
  // final String media;
  final Map<String, dynamic> questions;

  Quiz({this.questions});

  factory Quiz.fromJson(Map<String, dynamic> json) {
    // print(json['data']['quiz']['questions'][0]['question']);
    return Quiz(
      questions: json['data']['quiz']['questions'],
      // question: json['data']['quiz']['questions']['question'],
      // options: json['data']['quiz']['questions']['options'],
      // media: json['data']['quiz']['questions']['media'],
    );
  }
}
