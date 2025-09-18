import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row and Column',
      home: Scaffold(
        appBar: AppBar(title: const Text('Praktikum Flutter')),
        body: const Center(
          child: Text("Hello World", style: TextStyle(fontSize: 24)),
        ),
      ),
    );
  }
}
