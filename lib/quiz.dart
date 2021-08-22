import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_complete_guide/question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestions;
  final int questionIndex;

  Quiz(
      {required this.questions,
      required this.answerQuestions,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answerText) {
          return Answer(() => answerQuestions(answerText['score']),
              answerText['text'] as String);
        }).toList(),
      ],
    );
  }
}
