import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        width: double.infinity,
        child: RaisedButton(
          child: Text(this.answerText),
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: selectHandler,
        ));
  }
}
