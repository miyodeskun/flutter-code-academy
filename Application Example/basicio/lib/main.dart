import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController textEditingController = TextEditingController();
  String _value = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Basic IO App'),
        ),
        body: Center(
          child: Column(
            children: [
              const Text("Enter your text below"),
              TextField(
                controller: textEditingController,
              ),
              ElevatedButton(
                  onPressed: _pressMe, child: const Text("Press Me")),
              Text(_value, style: TextStyle(color: Colors.black))
            ],
          ),
        ),
      ),
    );
  }

  void _pressMe() {
    print("Hello world!");
    setState(() {
      _value = textEditingController.text;
    });
    print(_value);
  }
}
