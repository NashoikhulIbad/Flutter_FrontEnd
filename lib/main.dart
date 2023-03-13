import 'package:flutter/material.dart';
import 'package:submarine/detail_screen.dart';
import 'package:submarine/model/tourism_place.dart';
import 'package:submarine/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      theme: ThemeData(),
      home: const MainScreen(),
    );
  }
}