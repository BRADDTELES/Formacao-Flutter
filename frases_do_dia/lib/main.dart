import 'package:flutter/material.dart';

void main() {

  runApp(new MaterialApp(
    title: "Frases do dia",
    home: Container(
      color: Colors.white,
      child: Column(
        children: <Widget> [
          TextButton(
          //ElevatedButton(
              onPressed: (){
                print("Botão pressionado!");
              },
              child: Text(
                  "Clique aqui",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none
                ),
              )
          )
        ],
      ),
    ),
  ));

}