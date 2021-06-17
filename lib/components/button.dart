import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String answer; // --> paramêtro 1 (ex.:)
  final VoidCallback onpressed;

  // const Button({required this.answer, required this.onpressed, Key? key}) --> nominal
  //     : super(key: key); --> answer: "Button", onpressed: onpressed,

  Button(this.answer, this.onpressed); // --> posicional

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Colors.amber,
          ),
        ),
        child: Text(
          answer,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        onPressed: onpressed,
      ),
    );
  }
}
