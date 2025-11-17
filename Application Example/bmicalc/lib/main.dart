import 'dart:async';
import 'bmicalc.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'BMI Calc',
        theme: ThemeData(primarySwatch: Colors.yellow),
        home: const SplashPage());
  }
}

@override
class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (content) => const BmiCalcPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('BMI Calculator',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          Image.asset("assets/images/bmi_icon.png", scale: 3),
          const Text(
            'Version 1.0',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      )),
    );
  }
}
