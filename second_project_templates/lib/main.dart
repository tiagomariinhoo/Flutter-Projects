import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
          title: Text("My home page")
      ),
      body: Container(
        color: Colors.lightBlue,
        child: Column(
          children: [
            Container(
              color: Colors.green,
              child: Text("Columns")
            ),
          ],
        ),
      )
    )
    );
  }
}
