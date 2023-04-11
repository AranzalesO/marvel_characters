import 'package:flutter/material.dart';
import 'package:marvel_characters/pages/character_detail.dart';
import 'package:marvel_characters/utils/extensions.dart';
import 'package:marvel_characters/widgets/custom_image.dart';

class ListTileCharacter extends StatelessWidget {
  const ListTileCharacter(
      {super.key, required this.image, required this.title});

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => CharacterDetail())),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 250,
            child: CustomImage(child: Image.asset(image)),
          ),
          6.pv,
          Text(
            title.toUpperCase(),
            style: const TextStyle(fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }
}
