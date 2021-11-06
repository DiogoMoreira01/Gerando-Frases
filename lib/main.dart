// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // ignore: unused_field, prefer_final_fields
  var _frases = [
    "O entusiasmo é a maior força da alma. Conserva-o e nunca te faltará poder para conseguires o que desejas. *Napoleon Hill*",
    "Não devemos ter medo das novas idéias! Elas podem significar a diferença entre o triunfo e o fracasso. *Napoleon Hill*",
    "Cada adversidade, cada fracasso, cada dor de cabeça carrega consigo a semente de um benefício igual ou maior. *Napoleon Hill*",
    "É sempre a sua vez de fazer a próxima jogada. *Napoleon Hill*",
    "Ninguém pode te tornar ciumento, bravo, vingativo ou ganancioso - a menos que você o permita. *Napoleon Hill*",
  ];

  // ignore: unused_field, prefer_final_fields
  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          //width: double.infinity,
          /* decoration: BoxDecoration(
            border: Border.all(width: 3, color: Colors.amber),
          ),*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
              // ignore: prefer_const_constructors
              RaisedButton(
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: Colors.green,
                onPressed: _gerarFrase,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
