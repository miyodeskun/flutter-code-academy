import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController textEditingController = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();
  double numA = 0, numB = 0, result = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: textEditingController,
                  decoration: InputDecoration(
                      hintText: "First Number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6))),
                  keyboardType: TextInputType.numberWithOptions(),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: textEditingController2,
                  decoration: InputDecoration(
                      hintText: "Second Number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6))),
                  keyboardType: TextInputType.numberWithOptions(),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amber),
                        onPressed: () {
                          _calculate("+");
                        },
                        child: const Text("+")),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amber),
                        onPressed: () {
                          _calculate("‐");
                        },
                        child: const Text("‐")),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amber),
                        onPressed: () {
                          _calculate("x");
                        },
                        child: const Text("x")),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amber),
                        onPressed: () {
                          _calculate("/");
                        },
                        child: const Text("/")),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  'Result: ' + result.toString(),
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _calculate(String op) {
    setState(() {
      numA = double.parse(textEditingController.text);
      numB = double.parse(textEditingController2.text);
      switch (op) {
        case "+":
          result = numA + numB;
          break;
        case "‐":
          result = numA - numB;
          break;
        case "x":
          result = numA * numB;
          break;
        case "/":
          result = numA / numB;
          break;
      }
    });
  }
}
