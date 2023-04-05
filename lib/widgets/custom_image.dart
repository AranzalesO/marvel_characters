import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key, required this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(borderRadius: BorderRadius.circular(10), child: child);
  }
}
