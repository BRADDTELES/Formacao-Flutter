import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    //debugShowCheckedModeBanner: false,
    title: "Frases do dia",
    home: Container(
      //color: Colors.white,
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      margin: EdgeInsets.all(0),
      //margin: EdgeInsets.only(top: 50, left: 50),
      //margin: EdgeInsets.fromLTRB(10, 60, 30, 40),
      decoration:
          BoxDecoration(border: Border.all(width: 3, color: Colors.white)),
      child: Row(
        children: [
          Text("t1"),

          Padding(
            padding: EdgeInsets.all(30),
            child: Text("t2"),
          ),

          Text("t3"),
          /*Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus hendrerit fringilla mi eu faucibus.",
              textAlign: TextAlign.justify,
          ),*/
        ],
      ),
    ),
  ));
}
