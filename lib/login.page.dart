import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  String get initialRoute => 't2';

  String email = 'cunhamh@yahoo.com.br';

  String senha = '123456';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                onChanged: (text) {
                  email = (text);
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(color: Colors.red),
                ),
              ),
              Divider(),
              TextFormField(
                onChanged: (text) {
                  senha = (text);
                },
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Senha",
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(color: Colors.red),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Divider(),
              ButtonTheme(
                child: ElevatedButton(
                  onPressed: () {
                    if (email == 'cunhamh@yahoo.com.br' && senha == '123456') {
                      Navigator.of(context).pushReplacementNamed(initialRoute);
                    } else {
                      print('Login Inválido');
                    }
                  },
                  child: Text(
                    'ENTRAR',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
