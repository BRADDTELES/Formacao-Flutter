import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List _lista = ["Jamilton", "Maria", "João", "Carla"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widgets", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _lista.length,
              itemBuilder: (context, index){
                return ListTile(
                  title: Text( _lista[index] ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
