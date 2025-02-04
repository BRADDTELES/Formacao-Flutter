import 'package:flutter/material.dart';

class EntradaRadioButton extends StatefulWidget {
  const EntradaRadioButton({super.key});

  @override
  State<EntradaRadioButton> createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {

  //String? _escolhaUsuario;
  int? _escolhaUsuario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: [

            RadioListTile(
              title: Text("Masculino"),
                //value: "m",
                value: 1,
                groupValue: _escolhaUsuario,
                //onChanged: (String? escolha){
                onChanged: (int? escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                  //print("resultado: " + escolha!);
                }
            ),
            RadioListTile(
              title: Text("Feminino"),
                //value: "f",
                value: 2,
                groupValue: _escolhaUsuario,
                //onChanged: (String? escolha){
                onChanged: (int? escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                  //print("resultado: " + escolha!);
                }
            ),
            ElevatedButton(
              child: Text(
                "Salvar",
                style: TextStyle(
                    fontSize: 20
                ),
              ),
              onPressed: (){
                //print("Resultado: " + _escolhaUsuario!);
                print("Resultado: " + _escolhaUsuario!.toString());
              },
            ),

            /*Text("Masculino"),
            Radio(
                value: "m",
                groupValue: _escolhaUsuario,
                onChanged: (String? escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                  print("resultado: " + escolha!);
                },
            ),
            Text("Feminino"),
            Radio(
              value: "f",
              groupValue: _escolhaUsuario,
              onChanged: (String? escolha){
                setState(() {
                  _escolhaUsuario = escolha;
                });
                print("resultado: " + escolha!);
              },
            ),*/

          ],
        ),
      ),
    );
  }
}
