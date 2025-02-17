import 'package:flutter/material.dart';
import 'package:youtube/Api.dart';
import 'package:youtube/model/Video.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

  _listarVideos(){
    /*Future< List<Video> > videos;
    Api api = Api();
    videos = api.pesquisar("");
    return videos;*/
    Api api = Api();
    return api.pesquisar("");
  }

  @override
  Widget build(BuildContext context) {

    return FutureBuilder< List<Video> >(

      future: _listarVideos(),

      builder: (context, snapshot){
        switch(snapshot.connectionState){
          case ConnectionState.none :
          case ConnectionState.waiting:
            return const Center(
              child: CircularProgressIndicator(),
            );
            break;
          case ConnectionState.active:
          case ConnectionState.done:
            if ( snapshot.hasData ){

              return ListView.separated(
                  itemBuilder: (context, index){

                    List<Video>? videos = snapshot.data;
                    Video video = videos![ index ];

                    return Column(
                      children: [
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                                image: NetworkImage(
                                  video.imagem!
                                ),
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text( video.titulo! ),
                          subtitle: Text( video.canal! ),
                        )
                      ],
                    );
                  },
                  separatorBuilder: (context, index) => Divider(
                    height: 2,
                    color: Colors.grey,
                  ),
                  itemCount: snapshot.data!.length,
              );
            }else{
              return const Center(
                child: Text("Nenhum dados a ser exibido!"),
              );
            }
            break;
        }
      },
    );
  }
}
