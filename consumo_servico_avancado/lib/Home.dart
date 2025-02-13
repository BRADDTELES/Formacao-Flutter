import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:consumo_servico_avancado/Post.dart';
import 'dart:convert';
import 'dart:async';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final _urlBase = Uri.parse("https://jsonplaceholder.typicode.com/posts");
  //String _urlBase = "https://jsonplaceholder.typicode.com/";// NÃO FUNCIONOU

  Future<List<Post>> _recuperarPostagens() async {
    //var _urlBase = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    http.Response response = await http.get( _urlBase );
    var dadosJson = json.decode( response.body );

    List<Post> postagens = [];
    for( var post in dadosJson ){

      print("${"post: " + post["title"]} ${post["id"]}" );
      Post p = Post(post["userId"], post["id"], post["title"], post["body"]);
      postagens.add( p );

    }
    return postagens;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Consumo de serviço avançado",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: FutureBuilder<List<Post>>(
        future: _recuperarPostagens(),
        builder: (context, snapshot){

          switch( snapshot.connectionState ){
            case ConnectionState.none :
              print("conexao none");
              break;
            case ConnectionState.waiting :
              print("conexao waiting");
              return const Center(
                child: CircularProgressIndicator(),
              );

            case ConnectionState.active :
              print("conexao active");
              break;
            case ConnectionState.done :
              print("conexao done");
              if ( snapshot.hasError ){
                print("lista: Erro ao carregar ");
              }else {

                print("lista dentro do else: carregou!! ");
                return ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (context, index){

                    List<Post>? lista = snapshot.data;
                    Post post = lista![index];

                    return ListTile(
                      title: Text( post.title ),
                      subtitle: Text( post.id.toString() ),
                    );

                  }
                );

              }
          }

          return const Center(
            child: Text("Não gerou a lista da API"),
          );

        },
      ),
    );
  }
}
