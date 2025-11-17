import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Flutter App',
      home: Scaffold(
        appBar: AppBar(title: Text('Home Page'), backgroundColor: Colors.blue),
        body: Center(child: Text('Hello, World!')),
      ),
    );
  }
}
