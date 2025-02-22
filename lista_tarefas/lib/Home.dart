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
  Map<String, dynamic> _ultimaTarefaRemovida = Map();
  TextEditingController _controllerTarefa = TextEditingController();

  Future<File> _getFile() async {

    final diretorio = await getApplicationDocumentsDirectory();
    return File( "${diretorio.path}/dados.json" );

  }

  _salvaTarefa() {

    String textoDigitado = _controllerTarefa.text;

    Map<String, dynamic> tarefa = Map();
    tarefa["titulo"] = textoDigitado;
    tarefa["realizada"] = false;
    //tarefa["realizada"] = null;

    setState(() {
      _listaTarefas.add( tarefa );
    });
    _salvarArquivo();
    _controllerTarefa.text = "";

  }

  _salvarArquivo() async {

    var arquivo = await _getFile();

    String dados = json.encode( _listaTarefas );
    arquivo.writeAsString( dados );

  }

  _lerArquivo() async {

    try{

      final arquivo = await _getFile();
      return arquivo.readAsString();

    }catch(e){
      return null;
    }

  }

  Widget criarItemLista(context, index) {

    //final item = _listaTarefas[index]["titulo"];

    return Dismissible(
        key: Key( DateTime.now().millisecondsSinceEpoch.toString() ),
        direction: DismissDirection.endToStart,
        onDismissed: (direction){

          //recuperar o ultimo item excluido
          _ultimaTarefaRemovida = _listaTarefas[index];

          //Remove item da lista
          _listaTarefas.removeAt(index);
          _salvarArquivo();

          //snackbar
          final snackbar = SnackBar(
            //backgroundColor: Colors.green,
            duration: Duration(seconds: 5),
              content: Text("Tarefa removida!"),
            action: SnackBarAction(
                label: "Desfazer",
                onPressed: (){

                  //Desfazer
                  setState(() {
                    _listaTarefas.insert(index, _ultimaTarefaRemovida);
                  });
                  _salvarArquivo();

                }
            ),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackbar);

        },
        background: Container(
          color: Colors.red,
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.delete,
                color: Colors.white,
              )
            ],
          ),
        ),
        child: CheckboxListTile(
          title: Text(_listaTarefas[index]['titulo'].toString()),
          value: _listaTarefas[index]['realizado'],
          onChanged: (bool? valorAlterado ){
            setState(() {
              _listaTarefas[index]['realizado'] = valorAlterado;
            });
            _salvarArquivo();
          },
          tristate: true,
        ),
    );

  }

  @override
  void initState() {
    super.initState();

    _lerArquivo().then( (dados){
      setState(() {
        _listaTarefas = json.decode(dados);
      });
    } );

  }

  @override
  Widget build(BuildContext context) {

    //_salvarArquivo();
    //print("itens: " +  DateTime.now().millisecondsSinceEpoch.toString());

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
                    controller: _controllerTarefa,
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
                        _salvaTarefa();
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
              itemBuilder: criarItemLista,
            ),
          ),
        ],
      ),
    );
  }
}
