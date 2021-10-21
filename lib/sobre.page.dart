import 'package:flutter/material.dart';

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  String get initialRoute4 => 't4';
  String get initialRoute5 => 't5';
  String get initialRoute2 => 't2';
  String get initialRoute1 => 't1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(
          child: Text(
            'Sobre',
          ),
        ),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'Tema Escolhido: Calculadora de IMC   '
                'Objetivo: Aprendizado Flutter',
                style: TextStyle(
                  fontSize: 32,
                  fontStyle: FontStyle.italic,
                  color: Colors.amber,
                ),
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple),
              accountName: Text("MHC"),
              accountEmail: Text("cunhamh@yahoo.com.br"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "MHC",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: Text(
                "Calcular IMC",
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed(initialRoute2);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: Text(
                "Configurações",
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed(initialRoute4);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.airplay,
                color: Colors.black,
              ),
              title: Text(
                "Sair",
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed(initialRoute1);
              },
            ),
          ],
        ),
      ),
    );
  }
}
