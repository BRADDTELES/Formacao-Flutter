import 'package:cara_ou_coroa/TelaPrincipal.dart';
import 'package:cara_ou_coroa/TelaSecundaria.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
      const MaterialApp(
        home: TelaPrincipal(),
        //home: TelaSecundaria(),
        debugShowCheckedModeBanner: false,
      )
  );
}