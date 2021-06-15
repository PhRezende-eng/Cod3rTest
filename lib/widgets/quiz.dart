import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String textQuestion;

  Question({required this.textQuestion, Key? key}) : super(key: key);

  // const Question({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        textQuestion,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 25,
        ),
      ),
    );
  }
}
