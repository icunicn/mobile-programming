import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Praktikum Flutter'
        )),
        body: const Center(
          child: Text(
            'Muhamad Kharis Ihsan',
            style: TextStyle(fontSize: 24),
          )
        ),
      )
    );
  }
}

