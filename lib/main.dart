import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<StatefulWidget> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': "What\'s your favorite color?",
        'answers': ['white', 'blue', 'lilac', 'orange']
      },
      {
        'questionText': "What\'s your favorite animal?",
        'answers': ['dog', 'cat', 'tiger', 'lion']
      },
      {
        'questionText': "What\'s your favorite meal?",
        'answers': ['apples', 'fries', 'hamburger', 'pizza']
      }
    ];

    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        home: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(30),
            child: AppBar(
              title: Text('My First App'),
            ),
          ),
          body: Column(children: [
            Question(questions[_questionIndex]['questionText'] as String),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ]),
        ));
  }
}
