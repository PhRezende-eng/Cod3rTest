import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String texto;

  Question(this.texto);

  // const Question({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Text(
        texto,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 25,
        ),
      ),
    );
  }
}
