import 'package:flutter/material.dart';
import '../components/question.dart';
import '../components/input.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var perguntaRespondida = 0;

  void responder() {
    setState(() {
      //serve para notifcar a interface gráfica que houve uma mudança, pois ela está alterando a variável
      perguntaRespondida++;
    });

    if (perguntaRespondida == perguntas.length) {
      perguntaRespondida = 0;
    }

    print("Pergunta respondida!");
    print(perguntaRespondida);
  }

  final List<String> perguntas = [
    'Qual a sua cor Favortia?',
    'Qual é o seu animal favortio?',
    'QSeila asdflh?',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Questao(perguntas[perguntaRespondida]),
          ElevatedButton(
            child: Text('Resposta 1'),
            onPressed: responder,
          ),
          ElevatedButton(
            child: Text('Resposta 2'),
            onPressed: responder,
          ),
          ElevatedButton(
            child: Text('Resposta 3'),
            onPressed: responder,
          ),
          Input(
            label: "Label a",
            hint: "Hint a",
            coloricon: Colors.red,
            colorlabel: Colors.red,
          ),
          SizedBox(height: 10),
          Input(
            label: "Label b",
            hint: "Hint b",
            coloricon: Colors.green,
            colorlabel: Colors.green,
          ),
        ],
      ),
    );
  }
}

// FlatButton ==> TextButton
// RaisedButton ==> ElevatedButton