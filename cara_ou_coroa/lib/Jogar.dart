import 'dart:math';

import 'package:cara_ou_coroa/Resultado.dart';
import 'package:flutter/material.dart';

class Jogar extends StatefulWidget {
  const Jogar({super.key});

  @override
  State<Jogar> createState() => _JogarState();
}

class _JogarState extends State<Jogar> {

  void _exibirResultado(){

    var itens = ["cara", "coroa"];
    var numero = Random().nextInt( itens.length );
    var resultado = itens[ numero] ;

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Resultado( resultado )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff60bc8b),
      //backgroundColor: Color.fromRGBO(51, 204, 51, 1),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("imagens/logo.png",),
              GestureDetector(
                onTap: _exibirResultado,
                child: Image.asset("imagens/botao_jogar.png"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
