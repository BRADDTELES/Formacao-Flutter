import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  const EntradaSlider({super.key});

  @override
  State<EntradaSlider> createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {

  //double valor = 5;
  double valor = 0;
  //String label = "Valor selecionado";
  String label = "0.0";

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
      body: Container(
        padding: EdgeInsets.all(60),
        child: Column(
          children: [

            Slider(
                value: valor,
                min: 0,
                max: 10,
                label: label,
                divisions: 5,
                activeColor: Colors.red,
                inactiveColor: Colors.black26,
                onChanged: (double novoValor){
                  setState(() {
                    valor = novoValor;
                    //label = "Valor selecionado " + novoValor.toString();
                    label = novoValor.toString();
                  });
                  //print("Valor selecionado: " + novoValor.toString());
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
                print("Valor selecionado: " + valor.toString());
              },
            ),

          ],
        ),
      ),
    );
  }
}
