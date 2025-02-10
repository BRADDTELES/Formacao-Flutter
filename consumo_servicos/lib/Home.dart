import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _controllerCep = TextEditingController();
  String _resultado = "Resultado";

  _recuperarCep() async {

    //String url = "https://viacep.com.br/ws/01001000/json/"; //Erro
    String cepDigitado = _controllerCep.text;
    var url = Uri.parse("https://viacep.com.br/ws/$cepDigitado/json/");
    http.Response response;

    response = await http.get( url );
    Map<String, dynamic> retorno = json.decode( response.body );
    String logradouro = retorno["logradouro"];
    String bairro = retorno["bairro"];
    String localidade = retorno["localidade"];
    String estado = retorno["estado"];

    setState(() {
      _resultado = "$logradouro, $bairro, $localidade, $estado";
    });

    //print("Resposta:\nlogradouro: $logradouro\nbairro: $bairro\n"
        "localidade: $localidade\nestado: $estado");

    //print("resposta: " + response.statusCode.toString());
    //print("resposta: " + response.body);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Consumo de serviço web",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Digite o cep: ex. 05428200"
              ),
              style: TextStyle(fontSize: 20),
              controller: _controllerCep,
            ),
            ElevatedButton(
                onPressed: _recuperarCep,
                child: const Text("Clique aqui")
            ),
            Text( _resultado ),
          ],
        ),
      ),
    );
  }
}
