import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  Result(this.totalScore);

  String get resultPhrase {
    var phrase = 'You did it';
    if (totalScore < 10) {
      phrase = 'Loser';
    }
    if (totalScore < 15 && totalScore > 10) {
      phrase = 'Better';
    }
    if (totalScore < 20) {
      phrase = 'Winner';
    }
    return phrase;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
