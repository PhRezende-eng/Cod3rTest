import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;

  Questao(this.texto);

  // const Questao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(texto);
  }
}
