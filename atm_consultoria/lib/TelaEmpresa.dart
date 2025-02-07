import 'package:flutter/material.dart';

class TelaEmpresa extends StatefulWidget {
  const TelaEmpresa({super.key});

  @override
  State<TelaEmpresa> createState() => _TelaEmpresaState();
}

class _TelaEmpresaState extends State<TelaEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Empresa",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(18),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                      "imagens/detalhe_empresa.png"
                  ),
                  Padding(padding: EdgeInsets.only(right: 10)),
                  Text(
                      "Sobre a empresa",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      )
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Text(
                  "Lorem ipsum odor amet, consectetuer adipiscing elit. "
                      "Ridiculus dis finibus non ultricies inceptos sem. "
                      "Tempus consequat cursus dictum primis augue et. "
                      "Morbi dis donec nisi rhoncus placerat vestibulum pulvinar facilisis. "
                      "Dui amet erat; cubilia malesuada eleifend metus. "
                      "Justo dui eget netus cursus tristique justo tempor. "
                      "Interdum aptent scelerisque proin facilisis accumsan vestibulum risus bibendum."
                      "Lorem ipsum odor amet, consectetuer adipiscing elit. "
                      "Ridiculus dis finibus non ultricies inceptos sem. "
                      "Tempus consequat cursus dictum primis augue et. "
                      "Morbi dis donec nisi rhoncus placerat vestibulum pulvinar facilisis. "
                      "Dui amet erat; cubilia malesuada eleifend metus. "
                      "Justo dui eget netus cursus tristique justo tempor. "
                      "Interdum aptent scelerisque proin facilisis accumsan vestibulum risus bibendum."
                      "Lorem ipsum odor amet, consectetuer adipiscing elit. "
                      "Ridiculus dis finibus non ultricies inceptos sem. "
                      "Tempus consequat cursus dictum primis augue et. "
                      "Morbi dis donec nisi rhoncus placerat vestibulum pulvinar facilisis. "
                      "Dui amet erat; cubilia malesuada eleifend metus. "
                      "Justo dui eget netus cursus tristique justo tempor. "
                      "Interdum aptent scelerisque proin facilisis accumsan vestibulum risus bibendum."
                      "Lorem ipsum odor amet, consectetuer adipiscing elit. "
                      "Ridiculus dis finibus non ultricies inceptos sem. "
                      "Tempus consequat cursus dictum primis augue et. "
                      "Morbi dis donec nisi rhoncus placerat vestibulum pulvinar facilisis. "
                      "Dui amet erat; cubilia malesuada eleifend metus. "
                      "Justo dui eget netus cursus tristique justo tempor. "
                      "Interdum aptent scelerisque proin facilisis accumsan vestibulum risus bibendum.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  )
              ),
            ],
          ),
        )
      ),
    );
  }
}
