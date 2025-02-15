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

  _post() async {

    Post post = Post(120, 0, "Titulo", "Corpo da postagem");
    var urlBasePost = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var corpo = json.encode(
      post.toJson()
    );
    http.Response response = await http.post(
        urlBasePost,
        headers: {
          'Content-type': 'application/json; charset=UTF-8',
        },
      body: corpo,
    );
    print("resposta: ${response.statusCode}");
    print("resposta: ${response.body}");
  }

  _put() async {

    Post post = Post(120, 0, "Titulo alterado", "Corpo da postagem alterada");
    var urlBasePut = Uri.parse("https://jsonplaceholder.typicode.com/posts/2");
    var corpo = json.encode(
        post.toJson()
    );
    http.Response response = await http.put(
        urlBasePut,
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      },
      body: corpo,
    );
    print("resposta: ${response.statusCode}");
    print("resposta: ${response.body}");
  }

  _patch() async {

    var urlBasePatch = Uri.parse("https://jsonplaceholder.typicode.com/posts/2");
    var corpo = json.encode(
        {
          "userId": 120,
          "body": "Corpo da postagem alterada unico"
        }
    );
    http.Response response = await http.patch(
      urlBasePatch,
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      },
      body: corpo,
    );
    print("resposta: ${response.statusCode}");
    print("resposta: ${response.body}");
  }

  _delete() async {

    var urlBaseDelete = Uri.parse("https://jsonplaceholder.typicode.com/posts/2");
    http.Response response = await http.delete( urlBaseDelete );
    if( response.statusCode == 200 ) {
      print("Sucesso ao deletar dados");
    }else {
      print("Erro ao deletar dados");
    }
    print("resposta: ${response.statusCode}");
    print("resposta: ${response.body}");

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
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton(
                    onPressed: _post,
                    child: const Text("Salvar"),
                ),
                ElevatedButton(
                  onPressed: _put,
                  //onPressed: _patch,
                  child: const Text("Atualizar"),
                ),
                ElevatedButton(
                  onPressed: _delete,
                  child: const Text("Remover"),
                ),
              ],
            ),

            Expanded(
                child: FutureBuilder<List<Post>>(
                  future: _recuperarPostagens(),
                  builder: (context, snapshot){

                    switch( snapshot.connectionState ){
                      case ConnectionState.none :
                        return const Center(
                          child: Text("Sem conexão"),
                        );
                      case ConnectionState.waiting :
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      case ConnectionState.active :
                        return const Center(
                          child: Text("Conexão ativa"),
                        );
                      case ConnectionState.done :
                        if ( snapshot.hasError ){
                          print("lista: Erro ao carregar ");
                          return Center(
                            child: Text("Erro ao carregar dados: ${snapshot.error}"),
                          );
                        }else {

                          print("lista dentro do else: carregou!! ");
                          return ListView.builder(
                              itemCount: snapshot.data!.length,
                              itemBuilder: (context, index){

                                Post post = snapshot.data![index];

                                return ListTile(
                                  title: Text( post.title ),
                                  subtitle: Text( post.id.toString() ),
                                );

                              }
                          );

                        }
                    }

                  },
                ),
            ),

          ],
        ),
      ),
    );
  }
}
