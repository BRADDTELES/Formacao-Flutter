import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String _textoSalvo = "Nada Salvo!";
  TextEditingController _controllerCampo = TextEditingController();

  _salvar() async {

    String valorDigitado = _controllerCampo.text;

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString( "nome", valorDigitado );
    
    print("operacao (salvar): $valorDigitado");

  }
  _recuperar() async {

    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _textoSalvo = prefs.getString("nome") ?? "Sem valor";
    });

    print("operacao (recuperar): $_textoSalvo");

  }

  _remover() async {

    final prefs = await SharedPreferences.getInstance();
    prefs.remove("nome");

    print("operacao (remover)");

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Manipulação de dados", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.all(16),
        alignment: Alignment.center,
        child: Column(
          children: [
            Text(_textoSalvo, style: TextStyle(fontSize: 20),),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Digite algo:",
                labelStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.blue
                ),
                hintText: "Digite algo",
              ),
              controller: _controllerCampo,
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: _salvar,
                  child: Text("Salvar",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      elevation: 5,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                  ),
                ),
                ElevatedButton(
                  onPressed: _recuperar,
                  child: Text("Recuperar",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      elevation: 5,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                  ),
                ),
                ElevatedButton(
                  onPressed: _remover,
                  child: Text("Remover",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      elevation: 5,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
