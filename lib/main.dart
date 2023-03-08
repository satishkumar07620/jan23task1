// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:jan23task1/stock.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stock(),
      debugShowCheckedModeBanner: false,
    );
  }
}
