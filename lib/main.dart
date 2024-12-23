import 'package:flutter/material.dart';
import 'package:kids_study/screens/homepage.dart';

void main() {
  runApp(const kids_study());
}

// ignore: camel_case_types
class kids_study extends StatelessWidget {
  const kids_study({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

