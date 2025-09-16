import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alignment',
      home: Scaffold(
        appBar: AppBar(title: Text('Alignment')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Malang',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 80),
              Text(
                '28\u00B0C',
                style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                ),
              ),
              SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SunnyWheter(day: 'Minggu', temp: '20\u00B0C'),
                  RainWheter(day: 'Senin', temp: '22\u00B0C'),
                  CloudyWheter(day: 'Selasa', temp: '18\u00B0C'),
                ], // or RainWheter(), CloudyWheter()
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SunnyWheter extends StatelessWidget {
  final String day;
  final String temp;

  const SunnyWheter({super.key, required this.day, required this.temp});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 10),
          Text(
            day,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 5),
          Icon(Icons.sunny, color: Colors.black, size: 20),
          SizedBox(height: 5),
          Text(
            temp,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class RainWheter extends StatelessWidget {
  final String day;
  final String temp;

  const RainWheter({super.key, required this.day, required this.temp});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 10),
          Text(
            day,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 5),
          Icon(Icons.cloudy_snowing, color: Colors.black, size: 20),
          SizedBox(height: 5),
          Text(
            temp,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class CloudyWheter extends StatelessWidget {
  final String day;
  final String temp;
  const CloudyWheter({super.key, required this.day, required this.temp});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 10),
          Text(
            day,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 5),
          Icon(Icons.cloud, color: Colors.black, size: 20),
          SizedBox(height: 5),
          Text(
            temp,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
