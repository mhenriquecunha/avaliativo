import 'package:flutter/material.dart';

void main() => runApp(const Page4());

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  String get initialRoute1 => 't1';

  String get initialRoute2 => 't2';

  String get initialRoute5 => 't5';

  @override
  Widget build(BuildContext context) {
    const title = 'Configurações';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          title: Center(child: Text('Configurações')),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.deepPurple),
                accountName: Text("User"),
                accountEmail: Text("cunhamh@yahoo.com.br"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    "User",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.info,
                  color: Colors.black,
                ),
                title: const Text('Calcular IMC'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed(initialRoute2);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.info,
                  color: Colors.black,
                ),
                title: const Text('Sobre'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed(initialRoute5);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.arrow_back_sharp,
                  color: Colors.black,
                ),
                title: const Text('Sair'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed(initialRoute1);
                },
              ),
            ],
          ),
        ),
        body: ListView(
          children: const <Widget>[
            ListTile(
              leading: Icon(Icons.local_activity_rounded),
              title: Text('Ativar/Desativar Usuário'),
            ),
            ListTile(
              leading: Icon(Icons.copy_all_outlined),
              title: Text('Ativar/Desativar Impressão'),
            ),
            ListTile(
              leading: Icon(Icons.library_books_outlined),
              title: Text('Ativar/Desativar Layout'),
            ),
          ],
        ),
      ),
    );
  }
}
