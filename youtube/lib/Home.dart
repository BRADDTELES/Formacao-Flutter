import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
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
      body: Container(
        
      ),
    );
  }
}
