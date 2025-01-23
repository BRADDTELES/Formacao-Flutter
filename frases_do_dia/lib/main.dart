import 'package:flutter/material.dart';

void main() {

  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeStateful(),
  ));

}

class HomeStateful extends StatefulWidget {
  const HomeStateful({super.key});

  @override
  State<HomeStateful> createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Frases do dia",
            style: TextStyle(
              color: Colors.white
            ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20, bottom: 50, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("images/logo.png"),
            Text(
                "Gratidão não é pagamento, mas um reconhecimento que se demonstra no dia a dia.",
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w400,
                wordSpacing: 10,
              ),
            ),
            ElevatedButton(
                onPressed: (){},
              style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.green)),
                child: Text(
                    "Nova Frase",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
            )
          ],
        ),
      )
    );
  }
}
