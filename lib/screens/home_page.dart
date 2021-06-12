import 'package:flutter/material.dart';
import '../components/question.dart';
import '../components/input.dart';
import '../components/answer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var index = 0;
  var numerodaPergunta = 1;

  void responder() {
    setState(() {
      //serve para notifcar a interface gráfica que houve uma mudança, pois ela está alterando a variável
      index++;
    });

    if (index == perguntas.length) {
      index = 0;
    }

    print("Pergunta respondida!");
    print('Posição ${index + numerodaPergunta}');
  }

  final List<Map<String, dynamic>> perguntas = [
    // List<Map<Chave, Valor>>
    // List<Map<String, Object>>

    {
      'text': 'Qual a sua cor favortia?',
      'answer': [
        'Amarelo',
        'Azul',
        'Preto',
        'Lilás',
      ],
    },
    {
      'text': 'Qual é o seu animal favorito?',
      'answer': [
        'Cachorro',
        'Gato',
        'Galo',
        'Galinha',
      ],
    },
    {
      'text': 'Qual foi a primeira escola que você estudou?',
      'answer': [
        '402 N',
        '102 N',
        'FGA',
        'Martista',
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> respostas = [];
    for (String answerText in perguntas[index]['answer']) {
      respostas.add(
        Answer(
          answerText,
          responder,
        ),
      );
    }
    return Column(
      children: [
        Question(perguntas[index]['text']),
        ...respostas,
        Input(
          label: "Label a",
          hint: "Hint a",
          coloricon: Colors.amber,
          colorlabel: Colors.amber,
        ),
        SizedBox(
          width:
              double.infinity, //fez com que alinhasse todos os child ao centro
        ),
        Input(
          label: "Label b",
          hint: "Hint b",
          coloricon: Colors.amber,
          colorlabel: Colors.amber,
        ),
      ],
    );
  }
}

// FlatButton ==> TextButton
// RaisedButton ==> ElevatedButton
//teste1