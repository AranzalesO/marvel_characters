import 'package:flutter/material.dart';
import 'package:marvel_characters/pages/home_page.dart';

void main() {
  runApp(const SuperHeroes());
}

class SuperHeroes extends StatelessWidget {
  const SuperHeroes({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Marvel Characters App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
