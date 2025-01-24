import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  const Jogo({super.key});

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "JokenPo",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //1) text
          //2) imagem
          //3) text resultado
          //4) Linha 3 imagens
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Escolha do App",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          GestureDetector(
            onTap: (){ print("Um clique na imagem!"); },
            onDoubleTap: (){ print("Dois cliques na imagem!"); },
            onLongPress: (){ print("Clique longo na imagem!"); },
            child: Image.asset("imagens/padrao.png"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Escolha uma opção abaixo",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("imagens/pedra.png", height: 100,),
              Image.asset("imagens/papel.png", height: 100,),
              Image.asset("imagens/tesoura.png", height: 100,),
            ],
          )
        ],
      ),
    );
  }
}
