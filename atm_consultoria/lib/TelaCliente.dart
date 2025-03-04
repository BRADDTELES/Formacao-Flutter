import 'package:flutter/material.dart';

class TelaCliente extends StatefulWidget {
  const TelaCliente({super.key});

  @override
  State<TelaCliente> createState() => _TelaClienteState();
}

class _TelaClienteState extends State<TelaCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Clientes",
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
                        "imagens/detalhe_cliente.png"
                    ),
                    Padding(padding: EdgeInsets.only(left: 10),
                      child: Text(
                          "Clientes",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          )
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child:
                  Image.asset("imagens/cliente1.png"),
                ),
                Text("Empresa de Software"),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child:
                  Image.asset("imagens/cliente2.png"),
                ),
                Text("Empresa de auditoria"),
              ],
            ),
          )
      ),
    );
  }
}
