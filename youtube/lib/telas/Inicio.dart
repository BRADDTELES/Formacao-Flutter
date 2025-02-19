import 'package:flutter/material.dart';
import 'package:youtube/Api.dart';
import 'package:youtube/model/Video.dart';
import 'package:youtube_player_embed/controller/video_controller.dart';
import 'package:youtube_player_embed/youtube_player_embed.dart';

class Inicio extends StatefulWidget {

  String pesquisa = "";
  Inicio( this.pesquisa, {super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

  VideoController? videoController;

  _listarVideos(String pesquisa){
    /*Future< List<Video> > videos;
    Api api = Api();
    videos = api.pesquisar("");
    return videos;*/
    Api api = Api();
    return api.pesquisar( pesquisa );
  }

  @override
  void initState() {
    super.initState();
    print("chamado 1 - initState");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("chamado 2 - didChangeDependencies");
  }

  @override
  void didUpdateWidget(covariant Inicio oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("chamado 2 - didUpdateWidget");
  }

  @override
  void dispose() {
    super.dispose();
    print("chamado 4 - dispose");
  }

  void _openVideoPlayer(String videoId) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => YoutubePlayerEmbed(
          key: ValueKey(videoId),
          callBackVideoController: (controller){
            videoController = controller;
          },
          videoId: videoId,
          autoPlay: true,
          aspectRatio: 16 / 9,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    print("chamado 3 - build");

    return FutureBuilder< List<Video> >(

      future: _listarVideos( widget.pesquisa ),

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

                    return GestureDetector(
                      onTap: (){
                        //PAREI AQUI
                        _openVideoPlayer(video.id);
                      },
                      child: Column(
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
                      ),
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
