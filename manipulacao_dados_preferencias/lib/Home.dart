import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _controllerCampo = TextEditingController();

  _salvar(){

  }
  _recuperar(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Manipulação de dados", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.all(16),
        alignment: Alignment.center,
        child: Column(
          children: [
            Text("Nada salvo!", style: TextStyle(fontSize: 20),),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Digite algo:",
                labelStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.blue
                ),
                hintText: "Digite algo",
              ),
              controller: _controllerCampo,
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: _salvar,
                  child: Text("Salvar",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      elevation: 5,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                  ),
                ),
                Padding(padding: EdgeInsets.only(right: 5)),
                ElevatedButton(
                  onPressed: _recuperar,
                  child: Text("Recuperar",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      elevation: 5,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
