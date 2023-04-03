import 'package:flutter/material.dart';
import 'package:marvel_characters/utils/extensions.dart';

class ListTileCharacter extends StatelessWidget {
  const ListTileCharacter(
      {super.key, required this.image, required this.title});

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 250,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(image)),
        ),
        6.pv,
        Text(
          title.toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.w300),
        )
      ],
    );
  }
}
