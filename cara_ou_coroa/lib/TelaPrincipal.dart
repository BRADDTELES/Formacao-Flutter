import 'package:cara_ou_coroa/TelaSecundaria.dart';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {

  void _exibirResultado(){

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
              Image.asset(
                "imagens/logo.png",
              ),
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
