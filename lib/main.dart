// ignore_for_file: prefer_const_constructors

import 'package:first_app/answer.dart';
import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }

}

class _MyAppState extends State<MyApp>{

  int _questionIndex = 0;

  var questions = [
    {
      'question': 'What\'s your favorite color?', 
      'answer':['Black', 'Red', 'White', 'Blue']
    },
    {
      'question': 'What\'s your animal?',
      'answer': ['dog', 'cat', 'mouse', 'horse']
    }
    ];

  void _pressed(){
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('My First App'),
              backgroundColor: Colors.redAccent,
            ),
            body: _questionIndex < questions.length ? Column(
              children: [
                Question(questions[_questionIndex]['question'] as String),
                ...(questions[_questionIndex]['answer'] as List<String>).map((answer)  {
                  return Answer(_pressed, answer);
                }).toList()
              ],
            ) : Center(child: Text('You did it!'),)
            ));
  }
}
