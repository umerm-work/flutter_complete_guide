import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
  final questions = const [
    {
      'questionText': 'What is your name',
      'answerText': ['alex', 'ali', 'umber']
    },
    {
      'questionText': 'What is your favourite animal',
      'answerText': ['cat', 'dog', 'bird']
    },
    {
      'questionText': 'What is your favourite fruit',
      'answerText': ['mango', 'orange', 'banana']
    },
  ];

  void answerQuestion() {
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
            ? Column(
                children: [
                  Question(questions[questionIndex]['questionText'] as String),
                  ...(questions[questionIndex]['answerText'] as List<String>)
                      .map((answerText) {
                    return Answer(answerQuestion, answerText);
                  }).toList(),
                ],
              )
            : Center(
                child: Text("You did it"),
              ),
      ),
    );
  }
}
