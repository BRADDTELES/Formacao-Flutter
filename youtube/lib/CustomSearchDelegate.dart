import 'package:flutter/material.dart';

class CustomSearchDelagate extends SearchDelegate<String> {

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: (){
          query = "";
        },
      ),
    ];
    throw UnimplementedError();
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: (){
        close(
            context,
            ""
        );
      },
    );
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    //print("resultado: pesquisa realizada");
    close(
        context,
        query
    );
    return Container();
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    //print("resultado: digitado " + query );
    return Container();

    /* SUGESTÇÕES DE PESQUISA
    List<String> lista = [];
    if ( query.isNotEmpty ){
      lista = [
        "Android", "Android navegação", "IOS", "Jogos"
      ].where(
        (texto) => texto.toLowerCase().startsWith( query.toLowerCase() )
      ).toList();

      return ListView.builder(
          itemCount: lista.length,
          itemBuilder: (context, index){

            return ListTile(
              onTap: (){
                close(context, lista[index] );
              },
              title: Text( lista[index] ),
            );
          });
    }else{
      return Center(
        child: Text("Nenhum resultado para a pesquisa!"),
      );
    }*/
    throw UnimplementedError();
  }

}