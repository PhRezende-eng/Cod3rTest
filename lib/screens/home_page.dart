import 'package:app/components/result.dart';
import 'package:flutter/material.dart';
import '../components/question.dart';
import '../components/input.dart';
import '../components/answer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool get haveSelectedQuestion {
    return index < questions.length;
  }

  var index = 0;
  var questionNumber = 1;

  void toAnswer() {
    setState(() {
      //serve para notifcar a interface gráfica que houve uma mudança, pois ela está alterando a variável
      index++;
    });

    // if (index == questions.length) {
    //   index = 0;
    // }

    print("Pergunta respondida!");
    print('Posição ${index + questionNumber}');
  }

  final List<Map<String, dynamic>> questions = [
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
    // Size size = MediaQuery.of(context).size;
    List<String> allQuestions =
        haveSelectedQuestion ? questions[index]['answer'] : [];
    List<Widget> widgets = haveSelectedQuestion
        ? allQuestions
            .map(
              (t) => Answer(t, toAnswer),
            )
            .toList()
        : [];

    // List<Widget> widgets = [];

    // for (String answerText in allQuestions) {
    //   widgets.add(
    //     Answer(
    //       answerText,
    //       toAnswer,
    //     ),
    //   );
    // }

    return haveSelectedQuestion
        ? Column(
            children: [
              Question(
                questions[index]['text'],
              ),
              ...widgets,
              Input(
                label: "Label a",
                hint: "Hint a",
                coloricon: Colors.amber,
                colorlabel: Colors.amber,
              ),
              SizedBox(
                width: double
                    .infinity, //fez com que alinhasse todos os child ao centro
              ),
              Input(
                label: "Label b",
                hint: "Hint b",
                coloricon: Colors.amber,
                colorlabel: Colors.amber,
              ),
            ],
          )
        : ResultComponent('Parabéns!!!');
  }
}

// FlatButton ==> TextButton
// RaisedButton ==> ElevatedButton
//teste1