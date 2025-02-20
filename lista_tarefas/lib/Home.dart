import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:async';
import 'dart:convert';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List _listaTarefas = [];

  _salvarArquivo() async {

    final diretorio = await getApplicationDocumentsDirectory();
    var arquivo = File( "${diretorio.path}/dados.json" );
    //print("Caminho: ${diretorio.path}");
    //caminho/dados.json

    //Criar dados
    Map<String, dynamic> tarefa = Map();
    tarefa["titulo"] = "Ir ao mercado";
    tarefa["realizada"] = false;
    _listaTarefas.add( tarefa );

    String dados = json.encode( _listaTarefas );
    arquivo.writeAsString( dados );

  }

  @override
  Widget build(BuildContext context) {

    //_salvarArquivo();

    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de tarefas", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.purple,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        onPressed: (){
          showDialog(
              context: context,
              builder: (context){

                return AlertDialog(
                  title: Text("Adicionar Tarefa"),
                  content: TextField(
                    decoration: InputDecoration(
                      labelText: "Digite sua tarefa"
                    ),
                    onChanged: (text){

                    },
                  ),
                  actions: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        foregroundColor: Colors.white,
                      ),
                      child: Text("Cancelar"),
                      onPressed: () => Navigator.pop(context),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        foregroundColor: Colors.white,
                      ),
                      child: Text("Salvar"),
                      onPressed: () {
                        //salvar

                        Navigator.pop(context);
                      },
                    ),
                  ],
                );

              },
          );
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        children: [

          Expanded(
            child: ListView.builder(
            itemCount: _listaTarefas.length,
              itemBuilder: (context, index){

                return ListTile(
                  title: Text(_listaTarefas[index]),
                );

              }),

          ),
        ],
      ),
    );
  }
}
