import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var perguntaRespondida = 0;

  void responder() {
    setState(() {
      //ser ver para notifcar a interface gráfica que houve uma mudança, pois ela está alterando a variável
      perguntaRespondida++;
    });
    print("Pergunta respondida!");
    print(perguntaRespondida);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual a sua cor Favortia?',
      'Qual é o seu animal favortio?',
      'QSeila asdflh?',
    ];

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
            margin: EdgeInsets.only(left: 20, right: 50),
            child: TextFormField(
              cursorHeight: 20,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                icon: Icon(Icons.ac_unit_outlined),
                hintText: "hintext",
                labelText: "labeltext",
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
