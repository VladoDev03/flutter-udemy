import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final int? questionIndex;
  final List<Map<String, Object>>? questions;
  final Function? answerQuestion;

  const Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
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
          questions![questionIndex as int]['questionText'] as String,
        ),
        ...(questions![questionIndex as int]['answers']
                as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion!(answer['score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
