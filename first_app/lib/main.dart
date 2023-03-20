import 'package:flutter/material.dart';

import './question.dart';
import 'answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    // print('Answer 1 chosen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Blue', 'Green', 'Red', 'Yellow']
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Dog', 'Cat', 'Mouse']
      },
      {
        'questionText': 'What\'s your favorite programming language?',
        'answers': ['C#', 'JavaScript', 'Dart', 'Kotlin', 'C++']
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Column(
          children: [
            // ElevatedButton(
            //   onPressed: _answerQuestion,
            //   child: const Text('Answer 1'),
            // ),
            // ElevatedButton(
            //   onPressed: () => print("Answer 2 chosen!"),
            //   child: const Text('Answer 2'),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     print("Answer 3 chosen!");
            //   },
            //   child: const Text('Answer 3'),
            // ),
            Question(
              questions[_questionIndex]['questionText'] as String,
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
