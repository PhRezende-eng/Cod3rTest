import 'package:app/components/input.dart';
import 'package:app/widgets/result.dart';
import 'package:flutter/material.dart';
import '../widgets/quiz.dart';
import '../components/button.dart';

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
  var fullNote = 0;

  void func() {
    setState(() {
      index = 0;
      fullNote = 0;
    });
  }

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
        {
          'texto': 'Preto',
          'pontuation': 10,
        },
        {
          'texto': 'Vermelho',
          'pontuation': 5,
        },
        {
          'texto': 'Verde',
          'pontuation': 3,
        },
        {
          'texto': 'Branco',
          'pontuation': 1,
        },
      ],
    },
    {
      'text': 'Qual é o seu animal favorito?',
      'answer': [
        {
          'texto': 'Coelho',
          'pontuation': 10,
        },
        {
          'texto': 'Cobra',
          'pontuation': 5,
        },
        {
          'texto': 'Elefante',
          'pontuation': 3,
        },
        {
          'texto': 'leão',
          'pontuation': 1,
        },
      ],
    },
    {
      'text': 'Qual foi a primeira escola que você estudou?',
      'answer': [
        {
          'texto': '104 Norte',
          'pontuation': 10,
        },
        {
          'texto': 'Marista',
          'pontuation': 5,
        },
        {
          'texto': 'FGA',
          'pontuation': 3,
        },
        {
          'texto': '302 Norte',
          'pontuation': 1,
        },
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    List<Map<String, dynamic>> allQuestions =
        haveSelectedQuestion ? questions[index]['answer'] : [];
    List<Widget> widgets = haveSelectedQuestion
        ? allQuestions
            .map(
              (answer) => Button(
                answer['texto'],
                toAnswer,
              ), //transforma "answer" em um component do tipo "Button"
            )
            .toList()
        : [];

    // List<Widget> widgets = [];

    // for (String answerText in allQuestions) {
    //   widgets.add(
    //     Button(
    //       answerText,
    //       toAnswer,
    //     ),
    //   );
    // }

    return haveSelectedQuestion
        ? Column(
            children: [
              Question(
                textQuestion: questions[index]['text'],
              ),
              ...widgets,
              Input(
                label: "Label a",
                hint: "Hint a",
                coloricon: Colors.amber,
                colorlabel: Colors.amber,
              ),
              Input(
                label: "Label b",
                hint: "Hint b",
                coloricon: Colors.amber,
                colorlabel: Colors.amber,
              ),
            ],
          )
        : ResultComponent(
            textResult: 'Parabéns!!!',
            onPressed: func,
          );
  }
}

// FlatButton ==> TextButton
// RaisedButton ==> ElevatedButton
//teste1