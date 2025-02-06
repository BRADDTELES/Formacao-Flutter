import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ATM Consultoria',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 120, bottom: 220),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              "imagens/logo.png",
              fit: BoxFit.scaleDown,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "imagens/menu_empresa.png",
                  fit: BoxFit.scaleDown,
                ),
                Image.asset(
                  "imagens/menu_servico.png",
                  fit: BoxFit.scaleDown,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "imagens/menu_cliente.png",
                  fit: BoxFit.scaleDown,
                ),
                Image.asset(
                  "imagens/menu_contato.png",
                  fit: BoxFit.scaleDown,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
