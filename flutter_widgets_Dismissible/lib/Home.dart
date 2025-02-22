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
                final item = _lista[index];
                return Dismissible(
                  background: Container(
                    color: Colors?.green,
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment?.start,
                      children: [
                        Icon(
                            Icons.edit,
                          color: Colors?.white,
                        )
                      ],
                    ),
                  ),
                  secondaryBackground: Container(
                    color: Colors?.red,
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment?.end,
                      children: [
                        Icon(
                          Icons.delete,
                          color: Colors?.white,
                        )
                      ],
                    ),
                  ),
                  //direction: DismissDirection?.horizontal, //horizontal por padrão
                  onDismissed: (direction){

                    if(direction == DismissDirection?.endToStart){
                      print("direcao: endToStart");
                    }else if(direction == DismissDirection.startToEnd){
                      print("direcao: startToEnd");
                    }

                    setState(() {
                      _lista.removeAt(index);
                    });

                  },
                    key: Key( item ),
                    child: ListTile(
                      title: Text( item ),
                    )
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
