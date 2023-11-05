import 'package:c2p/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyWebApp());
}

class MyWebApp extends StatelessWidget {
  const MyWebApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.deepPurpleAccent[100],
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      title: "Sharan Thakur Portfolio",
      home: const Home(),
    );
  }
}
