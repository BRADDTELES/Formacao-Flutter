import 'package:cara_ou_coroa/Jogar.dart';
import 'package:cara_ou_coroa/Resultado.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
      const MaterialApp(
        home: Jogar(),
        //home: Resultado(),
        debugShowCheckedModeBanner: false,
      )
  );
}