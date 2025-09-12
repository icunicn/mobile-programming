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
        appBar: AppBar(title: Text('Row and Column')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakWarna(warna: Colors.blue, label: 'Blue'),
                  SizedBox(width: 20),
                  KotakWarna(warna: Colors.green, label: 'Green'),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakWarna(warna: Colors.orange, label: 'Orange'),
                  SizedBox(width: 20),
                  KotakWarna(warna: Colors.purple, label: 'Purple'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KotakWarna extends StatelessWidget {
  final Color warna;
  final String label;

  const KotakWarna({Key? key, required this.warna, required this.label})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 130,
      decoration: BoxDecoration(
        color: warna,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.favorite, color: Colors.red, size: 50),
          SizedBox(height: 10),
          Text(
            label,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
