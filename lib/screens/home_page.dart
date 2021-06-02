import 'package:flutter/material.dart';

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
          Text(perguntas[perguntaRespondida]),
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
          Container(
            height: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            padding: EdgeInsets.only(left: 20, right: 60),
            margin: EdgeInsets.only(left: 30, right: 30),
            child: TextFormField(
              cursorHeight: 20,
              cursorColor: Colors.black,
              cursorRadius: Radius.circular(10),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                icon: Icon(
                  Icons.ac_unit_outlined,
                ),
                hintText: "hintext",
                hintStyle: TextStyle(
                  fontSize: 18,
                  textBaseline: TextBaseline.alphabetic,
                ),
                labelText: "labeltext",
                border: InputBorder.none,
              ),
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? ' NÃO USE @ '
                    : null;
              },
            ),
          ),
        ],
      ),
    );
  }
}

// FlatButton ==> TextButton
// RaisedButton ==> ElevatedButton