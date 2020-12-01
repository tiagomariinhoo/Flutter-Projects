// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; // Importa várias bibliotecas baseadas no Google Material Design
// import 'package:flutter/cupertino.dart'; // Baseado no ios material design

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return FlutterLogo();
    return MaterialApp(
      home: Scaffold(
        body: Text("\n\n\nHello Flutter!"),
      ),
    );
  }
}
