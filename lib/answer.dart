import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answearText;

  Answer(this.selectHandler, this.answearText);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: RaisedButton(
      color: Colors.lightBlueAccent,
      textColor: Colors.white,
      child: Text('Answer 1'),
      onPressed: selectHandler,
    ));
  }
}
