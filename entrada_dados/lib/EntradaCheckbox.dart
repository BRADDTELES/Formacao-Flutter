import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  const EntradaCheckbox({super.key});

  @override
  State<EntradaCheckbox> createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {

  bool _comidaBrasileira = false;
  bool _comidaMexicana = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada Checkbox"),
      ),
      body: Container(
        child: Column(
          children: [
            
            CheckboxListTile(
              title: Text("Comida Brasileira"),
                subtitle: Text("A melhor comida do mundo!!"),
                activeColor: Colors.red,
                //selected: true,
                //secondary: Icon(Icons.add_box),
                value: _comidaBrasileira,
                onChanged: (bool? valor){
                  setState(() {
                    _comidaBrasileira = valor!;
                  });
                  //print("Checkbox Brasileira: " + valor.toString());
                }
            ),
            CheckboxListTile(
              title: Text("Comida Mexicana"),
                subtitle: Text("A melhor comida do mundo"),
                activeColor: Colors.red,
                //selected: true,
                //secondary: Icon(Icons.add_box),
                value: _comidaMexicana,
                onChanged: (bool? valor){
                  setState(() {
                    _comidaMexicana = valor!;
                  });
                  //print("Checkbox Mexicana: " + valor.toString());
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
                print(
                  "Comida Brasileira: " + _comidaBrasileira.toString() +
                  " Comida Mexicana: " + _comidaMexicana.toString()
                );
              },
            ),

            /*Text("Comida Brasileira"),
            Checkbox(
              value: _estaSelecionado,
              onChanged: (bool? valor) {
                setState(() {
                  _estaSelecionado = valor!;
                });
                print("Checkbox: " + valor.toString());
              }
            )*/
            

            
          ],
        ),
      ),
    );
  }
}
