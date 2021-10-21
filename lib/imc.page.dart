import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2 createState() => _Page2();
}

class _Page2 extends State<Page2> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _infoText = "_infoText";
  String get initialRoute4 => "t4";
  String get initialRoute5 => "t5";
  String get initialRoute1 => "t1";

  void _resetFields() {
    weightController.text = "";
    heightController.text = "";
    setState(() {
      _infoText = "_infoText";
      _formKey = GlobalKey<FormState>();
    });
  }

  void _calculate(String _infoText) {
    double weight = double.parse(weightController.text);
    double height = double.parse(heightController.text) / 100;
    double imc = weight / (height * height);

    if (imc < 18.6) {
      _infoText = "Abaixo do Peso (${imc.toStringAsPrecision(4)})";
    } else if (imc >= 18.6 && imc < 24.9) {
      _infoText = "Peso Ideal (${imc.toStringAsPrecision(4)})";
    } else if (imc >= 25.0 && imc < 29.9) {
      _infoText = "Levemente Acima do Peso (${imc.toStringAsPrecision(4)})";
    } else if (imc >= 30.0 && imc < 34.9) {
      _infoText = "Obesidade Grau I (${imc.toStringAsPrecision(4)})";
    } else if (imc >= 35.0 && imc < 39.9) {
      _infoText = "Obesidade Grau II (${imc.toStringAsPrecision(4)})";
    } else if (imc >= 39.9 && imc < 44.9) {
      _infoText = "Obesidade Grau III (${imc.toStringAsPrecision(4)})";
    }
    print(_infoText = "${imc.toStringAsPrecision(4)}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de IMC"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: _resetFields,
          )
        ],
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
                Icons.calculate,
                color: Colors.black,
              ),
              title: const Text('Configurações'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed(initialRoute4);
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
                Icons.settings,
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
      backgroundColor: Colors.purple,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Icon(Icons.person_outline, size: 120.0, color: Colors.black),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Peso (Kg)",
                    labelStyle: TextStyle(color: Colors.black)),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 35.0),
                controller: weightController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Informe se Peso";
                  }
                },
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Altura (cm)",
                    labelStyle: TextStyle(color: Colors.black)),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 35.0),
                controller: heightController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Informe sua altura";
                  }
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Container(
                  height: 70.0,
                  child: TextButton(
                    child: Text(
                      "Calcular",
                      style: TextStyle(fontSize: 40.0, color: Colors.black),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _calculate(_infoText);
                      }
                    },
                  ),
                ),
              ),
              Text(
                _infoText,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('AlertDialog Title'),
          content: const Text('AlertDialog description'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      child: const Text('Show Dialog'),
    );
  }
}
