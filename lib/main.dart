import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Stateful Widget Demo',
      home: LikeButtonPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
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
      appBar: AppBar(title: const Text('Counter App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[700],
                    minimumSize: const Size(100, 60),
                  ),
                  onPressed: _decrementCounter,
                  child: const Text(
                    'Kurang',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[700],
                    minimumSize: const Size(100, 60),
                  ),
                  onPressed: _incrementCounter,
                  child: const Text(
                    'Tambah',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LikeButtonPage extends StatefulWidget {
  const LikeButtonPage({super.key});

  @override
  _LikeButtonPageState createState() => _LikeButtonPageState();
}

class _LikeButtonPageState extends State<LikeButtonPage> {
  // Initialize any necessary state here
  bool isLiked = false;
  int _likecount = 10;

  void _toggleLike() {
    setState(() {
      if (isLiked) {
        _likecount--;
        isLiked = false;
      } else {
        _likecount++;
        isLiked = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Like Button App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(
                isLiked ? Icons.favorite : Icons.favorite_border,
                color: isLiked ? Colors.red : Colors.grey,
                size: 48,
              ),
              onPressed: _toggleLike,
            ),
            Text(
              '$_likecount Likes',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}
