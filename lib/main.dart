import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'NewApp',
      theme: ThemeData(colorSchemeSeed: Colors.green),
      home: const appBar(),
    );
  }
}

class appBar extends StatelessWidget {
  const appBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Hello World')),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('Pulse Show')));
            },
            icon: const Icon(Icons.plus_one),
            tooltip: 'Show Test',
          )
        ],
      ),
      body: const Center(
          child: Text('Hello Center', style: TextStyle(fontSize: 25))),
    );
  }
}
