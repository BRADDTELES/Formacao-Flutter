import 'package:cara_ou_coroa/TelaPrincipal.dart';
import 'package:flutter/material.dart';

class TelaSecundaria extends StatefulWidget {
  const TelaSecundaria({super.key});

  @override
  State<TelaSecundaria> createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {

  void _exibirResultado(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff60bc8b),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Image.asset(
                "imagens/moeda_coroa.png",
              ),
              GestureDetector(
                onTap: _exibirResultado,
                child: Image.asset("imagens/botao_voltar.png"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
