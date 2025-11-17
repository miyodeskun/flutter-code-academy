import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController textEditingController = new TextEditingController();
  String value = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Flutter App',
      home: Scaffold(
        appBar: AppBar(title: Text('Home Page'), backgroundColor: Colors.blue),
        body: Column(
          children: [
            Text("Enter your text below"),
            TextField(controller: textEditingController),
            ElevatedButton(onPressed: onPressed, child: Text("Press Me!")),
            Text(value),
          ],
        ),
      ),
    );
  }

  void onPressed() {
    setState(() {
      value = textEditingController.text;
    });
  }
}
