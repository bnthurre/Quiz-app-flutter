import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 5, 112, 126),
              Color.fromARGB(255, 3, 51, 58)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            child: StartScreen())),
  ));
}
