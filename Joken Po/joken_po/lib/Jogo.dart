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
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.amber)
          ),
          child: Column(
            children: [
              Text(
                "Escolha do App:",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Image.asset(
                "images/papel.png",
                fit: BoxFit.scaleDown,
                width: 90,
                height: 90,
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Text(
                "Resultado",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              //Linha 3 imagens
              Padding(padding: EdgeInsets.only(top: 20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "images/pedra.png",
                      fit: BoxFit.scaleDown,
                      width: 90,
                      height: 90
                  ),
                  Image.asset(
                    "images/papel.png",
                      fit: BoxFit.scaleDown,
                      width: 90,
                      height: 90
                  ),
                  Image.asset(
                    "images/tesoura.png",
                      fit: BoxFit.scaleDown,
                      width: 90,
                      height: 90
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
