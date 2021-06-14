import 'package:flutter/material.dart';

class ResultComponent extends StatelessWidget {
  final String text;
  const ResultComponent(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Center(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 60,
        ),
      ),
    );
  }
}
