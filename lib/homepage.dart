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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FutureBuilder(
              future: textFunc(),
              builder: (context, snapshop) {
                if (snapshop.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                }
                if (snapshop.hasData) {
                  var value = snapshop.data.toString();
                  return Text(value);
                }
                if (snapshop.hasError) {
                  print(snapshop.error);
                }

                return const Text('');
              })
        ],
      ),
    );
  }
}
