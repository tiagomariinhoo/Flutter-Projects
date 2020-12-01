// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; // Importa várias bibliotecas baseadas no Google Material Design
import 'package:flutter/cupertino.dart'; // Baseado no ios material design

void main() {
  runApp(MyApp());
  // runApp(MyCupertinoApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return FlutterLogo();
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: "Flutter"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        // leading: Icon(Icons.arrow_back),
        // actions: [
        //   Icon(Icons.remove_circle),
        //   Icon(Icons.add_circle)
        // ]
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "You have pushed this button these many times:",
            ),
            Text(
              _counter.toString(),
              style: Theme.of(context).textTheme.display1,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: "Increment counter",
        onPressed: _incrementCounter,
      ),
    );
  }
}

// class MyCupertinoApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // return FlutterLogo();
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.black,
//         body: Center(
//           child: CupertinoActivityIndicator(),
//         ),
//       ),
//     );
//   }
// }
