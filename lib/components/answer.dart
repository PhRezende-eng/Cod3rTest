import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final VoidCallback onpressed;

  const Answer({required this.answer, required this.onpressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(answer),
      onPressed: onpressed,
    );
  }
}
