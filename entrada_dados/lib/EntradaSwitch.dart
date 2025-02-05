import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  const EntradaSwitch({super.key});

  @override
  State<EntradaSwitch> createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {

  bool _escolhaUsuario = false;
  bool _escolhaConfiguracao = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: [

            SwitchListTile(
              title: Text("Receber notificações"),
                value: _escolhaUsuario,
                onChanged: (bool valor){
                  setState(() {
                    _escolhaUsuario = valor;
                  });
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

                if ( _escolhaUsuario  ){
                  print("escolha: ativar notificações");
                }else{
                  print("escolha: Não ativar notificações");
                }

                //print("Resultado: " + _escolhaUsuario!.toString());
              },
            ),

            /*SwitchListTile(
              title: Text("Carregar imagens automaticamente"),
                value: _escolhaConfiguracao,
                onChanged: (bool valor){
                  setState(() {
                    _escolhaConfiguracao = valor;
                  });
                }
            ),*/
            /*Switch(
                value: _escolhaUsuuario,
                onChanged: (bool valor){
                  setState(() {
                    _escolhaUsuuario = valor;
                  });
                }
            ),
            Text("Receber notificações"),*/

          ],
        ),
      ),
    );
  }
}
