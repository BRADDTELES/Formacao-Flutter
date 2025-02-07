import 'package:flutter/material.dart';
import 'package:navecacao/TelaSecundaria.dart';

void main(){
  runApp(
      MaterialApp(
        home: TelaPrincipal(),
      )
  );
}

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Principal', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [

            ElevatedButton(
              child: Text("Ir para a segunda tela"),
              style: ElevatedButton.styleFrom(padding: EdgeInsets.all(15)),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TelaSecundaria("Jamilton"),
                    )
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}
