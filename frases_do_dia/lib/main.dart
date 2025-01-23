import 'package:flutter/material.dart';

void main() {

  runApp(new MaterialApp(
    title: "Frases do dia",
    home: Container(
      color: Colors.white,
      child: Column(
        children: [
          Text(
              "Lorem ipsum ",
            style: TextStyle(
              fontSize: 50,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
              letterSpacing: 0,
              wordSpacing: 0,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid,
              decorationColor: Colors.greenAccent,
              color: Colors.black
            ),
          ),
        ],
      ),
    ),
  ));

}