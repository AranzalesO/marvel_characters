import 'package:flutter/material.dart';
import 'package:auth_flutter/pages/home_page.dart';

void main() {
  runApp(const SuperHeroes());
}

class SuperHeroes extends StatelessWidget {
  const SuperHeroes({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Auth app firebase',
      debugShowCheckedModeBanner: false,
      home: FirstRoute(),
    );
  }
}
