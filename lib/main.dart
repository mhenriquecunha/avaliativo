import 'package:flutter/material.dart';

import 'config.page.dart';

import 'imc.page.dart';
import 'login.page.dart';

import 'sobre.page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Avaliativo',

      //
      // ROTAS DE NAVEGAÇÃO
      //
      initialRoute: 't1',
      routes: {
        't1': (context) => Page1(),
        't2': (context) => Page2(),
        't4': (context) => Page4(),
        't5': (context) => Page5(),
      },
    ),
  );
}
