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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                      "imagens/detalhe_empresa.png"
                  ),
                  Padding(padding: EdgeInsets.only(left: 10),
                    child: Text(
                        "Sobre a empresa",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.deepOrange,
                        )
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 16),
                child: Text(
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
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
