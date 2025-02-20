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
        title: Text("Lista de tarefas", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.purple,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text("Ir ao mercado", style: TextStyle(fontSize: 20),),
          Padding(padding: EdgeInsets.only(bottom: 16)),
          Text("estudar", style: TextStyle(fontSize: 20),),
          Padding(padding: EdgeInsets.only(bottom: 16)),
          Text("teste", style: TextStyle(fontSize: 20),),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
          onPressed: (){},
        child: Icon(Icons.add),
      ),
    );
  }
}
