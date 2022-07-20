import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: RaisedButton(
      color: Colors.lightBlueAccent,
      textColor: Colors.white,
      child: Text(answerText),
      onPressed: selectHandler,
    ));
  }
}
