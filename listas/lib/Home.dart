import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List _itens = [];

  void _carregarItens(){

    _itens = [];
    for(int i = 0; i <= 10; i++){

      Map<String, dynamic> item = Map();
      item["titulo"] = "Título $i Lorem ipsum dolor sit amet.";
      item["descricao"] = "Descrição $i ipsum dolor sit amet.";
      _itens.add( item );

    }

  }

  @override
  Widget build(BuildContext context) {

    _carregarItens();

    return Scaffold(
      appBar: AppBar(
        title: Text("Lista", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: _itens.length,
            itemBuilder: (context, indice){

              //Map<String, dynamic> item = _itens[indice];
              //print("item ${ item["titulo"] }");
              //print("item ${ _itens[indice]["titulo"] }");

              return ListTile(
                onTap: (){
                  //print("clique com onTap $indice");
                  showDialog(
                      context: context,
                      builder: (context){
                        return AlertDialog(
                          title: Text( _itens[indice]["titulo"] ),
                          titlePadding: EdgeInsets.all(20),
                          titleTextStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.orange
                          ),
                          content: Text( _itens[indice]["descricao"] ),
                          //contentPadding: EdgeInsets.all(80),
                          //backgroundColor: Colors.grey,
                          actions: [
                            ElevatedButton(
                                onPressed: (){
                                  print("Selecionado sim");
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  "Sim"
                                )
                            ),
                            ElevatedButton(
                                onPressed: (){
                                  print("Selecionado não");
                                  Navigator.pop(context);
                                },
                                child: Text(
                                    "Não"
                                )
                            ),
                          ],
                        );
                      }
                  );
                },
                /*onLongPress: (){
                  print("clique com onLongPress");
                },*/
                title: Text( _itens[indice]["titulo"] ),
                subtitle: Text( _itens[indice]["descricao"] ),
              );
            },
        ),
      ),
    );
  }
}
