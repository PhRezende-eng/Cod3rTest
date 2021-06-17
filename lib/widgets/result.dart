import 'package:app/components/button.dart';
import 'package:flutter/material.dart';

class ResultComponent extends StatelessWidget {
  final String textResult;
  final VoidCallback onPressed;
  const ResultComponent(
      {required this.textResult, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            textResult,
            style: TextStyle(
              fontSize: 60,
            ),
          ),
          Button(
            'Pressione aqui para voltar',
            onPressed,
          ),
        ],
      ),
    );
  }
}
