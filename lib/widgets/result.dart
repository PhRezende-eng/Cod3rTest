import 'package:flutter/material.dart';

class ResultComponent extends StatelessWidget {
  final String textResult;
  const ResultComponent({required this.textResult, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Center(
      child: Text(
        textResult,
        style: TextStyle(
          fontSize: 60,
        ),
      ),
    );
  }
}
