import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> frases = [
    "Vamos aprender Flutter",
    "Bom dia!",
    "Boa tarde!",
    "Dart é a melhor linguagem"
  ];

  String text = "Clique abaixo para gerar uma frase.";

  void _play() {
    int i = Random().nextInt(frases.length);
    print("Frase selecionada $i: ${frases[i]}");
    setState( () {
      text = frases[i];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Frases Aleatórias")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("images/title.png", height: 200),
              Text(text,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              )),
              ElevatedButton(
                onPressed: _play,
                child: Text("Nova Frase")
              )
            ],
          )
        ),
      );
  }
}