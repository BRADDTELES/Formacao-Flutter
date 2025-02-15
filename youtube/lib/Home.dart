import 'package:flutter/material.dart';
import 'package:youtube/telas/Biblioteca.dart';
import 'package:youtube/telas/EmAlta.dart';
import 'package:youtube/telas/Inicio.dart';
import 'package:youtube/telas/Inscricao.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _indiceAtual = 0;

  @override
  Widget build(BuildContext context) {

    List<Widget> telas = [
      Inicio(),
      EmAlta(),
      Inscricao(),
      Biblioteca(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
            "imagens/youtube.png",
          width: 98,
          height: 22,
        ),
        iconTheme: IconThemeData(
            color: Colors.black,
          opacity: 0.5,
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: (){
              print("acao: videocam");
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              print("acao: search");
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: (){
              print("acao: account_circle");
            },
          ),
        ],
      ),
      body: telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: (indice){
          setState(() {
            _indiceAtual = indice;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
          items: [
            BottomNavigationBarItem(
              //backgroundColor: Colors.orange,
                icon: Icon(Icons.home),
              label: "Início", // Substitui o => title: Text("Início"),
            ),
            BottomNavigationBarItem(
              //backgroundColor: Colors.red,
                icon: Icon(Icons.whatshot),
              label: "Em alta", // Substitui o => title: Text("Início"),
            ),
            BottomNavigationBarItem(
              //backgroundColor: Colors.blue,
              icon: Icon(Icons.subscriptions),
              label: "Inscrições", // Substitui o => title: Text("Início"),
            ),
            BottomNavigationBarItem(
              //backgroundColor: Colors.green,
              icon: Icon(Icons.folder),
              label: "Biblioteca", // Substitui o => title: Text("Início"),
            ),
          ],
      ),
    );
  }
}
