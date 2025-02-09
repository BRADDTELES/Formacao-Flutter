import 'package:cara_ou_coroa/Jogar.dart';
import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {

  String valor = "";

  Resultado(this.valor, {super.key});

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {

    //print(widget.valor);
    var caminhoImagem;
    if ( widget.valor == "cara" ){
      caminhoImagem = "imagens/moeda_cara.png";
    }else{
      caminhoImagem = "imagens/moeda_coroa.png";
    }

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
              Image.asset( caminhoImagem ),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Image.asset("imagens/botao_voltar.png"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
