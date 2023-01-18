// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'screens/home.dart';

void main() {
  runApp(const Launcher());
}

class Launcher extends StatelessWidget {
  const Launcher({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp',
      theme: ThemeData(
        
        primaryColor:  Color.fromRGBO(7, 90, 80, 1),
      ),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}
