import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer; // --> paramêtro 1 (ex.:)
  final VoidCallback onpressed;

  // const Answer({required this.answer, required this.onpressed, Key? key}) --> nominal
  //     : super(key: key); --> answer: "Answer", onpressed: onpressed,

  Answer(this.answer, this.onpressed); // --> posicional

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(answer),
      onPressed: onpressed,
    );
  }
}
