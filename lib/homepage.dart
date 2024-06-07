import 'package:flutter/material.dart';
import 'dart:async';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var text = 'Default';

  Future<String> textFunc() {
    return Future.delayed(const Duration(seconds: 2), () => 'Hello');
  }

  onPressed() async {
    text = await textFunc();
    setState(() {});
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(text)),
          Center(
              child: ElevatedButton(onPressed: onPressed, child: Text('Click')))
        ],
      ),
    );
  }
}
