import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var answerScore = 0;
  final questions = const [
    {
      'questionText': 'What is your name',
      'answers': [
        {'text': 'alex', 'score': 3},
        {'text': 'ali', 'score': 4},
        {'text': 'umber', 'score': 5}
      ]
    },
    {
      'questionText': 'What is your favourite animal',
      'answers': [
        {'text': 'cat', 'score': 10},
        {'text': 'dog', 'score': 5},
        {'text': 'bird', 'score': 2}
      ]
    },
    {
      'questionText': 'What is your favourite fruit',
      'answers': [
        {'text': 'mango', 'score': 21},
        {'text': 'orange', 'score': 12},
        {'text': 'banana', 'score': 20}
      ]
    },
  ];

  void restQuiz() {
    setState(() {
      answerScore = 0;
      questionIndex = 0;
    });
  }

  void answerQuestion(int score) {
    answerScore += score;
    if (questionIndex < questions.length) {}
    setState(() {
      questionIndex += 1;
    });
    print('Answer chosen');
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                questions: questions,
                answerQuestions: answerQuestion,
                questionIndex: questionIndex)
            : Result(answerScore,restQuiz),
      ),
    );
  }
}
