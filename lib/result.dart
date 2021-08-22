import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  final VoidCallback resetHandler;

  Result(this.totalScore, this.resetHandler);

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
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text('Reset Quiz'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
