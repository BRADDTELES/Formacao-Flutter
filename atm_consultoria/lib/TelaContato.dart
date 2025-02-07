import 'package:flutter/material.dart';

class TelaContato extends StatefulWidget {
  const TelaContato({super.key});

  @override
  State<TelaContato> createState() => _TelaContatoState();
}

class _TelaContatoState extends State<TelaContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Contato",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                        "imagens/detalhe_contato.png"
                    ),
                    Padding(padding: EdgeInsets.only(left: 10),
                      child: Text(
                          "Contato",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.greenAccent,
                          )
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 16),
                  child: Text("E-mail: consultoria@atm.com.br"),
                ),
                Padding(padding: EdgeInsets.only(top: 16)),
                Text("Telefone (11) 3333-2222\nCelular (11) 9999-8888"),
              ],
            ),
          )
      ),
    );
  }
}
