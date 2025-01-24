import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Campotexto extends StatefulWidget {
  const Campotexto({super.key});

  @override
  State<Campotexto> createState() => _CampotextoState();
}

class _CampotextoState extends State<Campotexto> {

  TextEditingController _textEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Entrada de dados",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,

      ),
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.all(32),
            child: TextField(
              //keyboardType: TextInputType.text,
              //keyboardType: TextInputType.datetime,
              //keyboardType: TextInputType.emailAddress,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Digite um valor"
              ),
              //enabled: false,
              //maxLength: 2,
              //maxLengthEnforcement: MaxLengthEnforcement.enforced,// true
              //maxLengthEnforcement: MaxLengthEnforcement.none,// false
              style: TextStyle(
                fontSize: 50,
                color: Colors.green
              ),
              //obscureText: true,// Invisible Password
              /*
              onChanged: (String texto){//Captura valor dentro da caixa de Texto
                print("valor digitado: " + texto);
              },*/
              onSubmitted: (String texto){//Captura valor digitado após a Confirmação
                print("valor digitado:" + texto);
              },
              controller: _textEditingController,
            ),
          ),
          TextButton(
              child: Text("Salvar", style: TextStyle(color: Colors.white),),
              style: TextButton.styleFrom(backgroundColor: Colors.lightGreen),
              onPressed: (){
                print("valor digitado:" + _textEditingController.text);
              },
              //style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
          )
        ],
      ),
    );
  }
}
