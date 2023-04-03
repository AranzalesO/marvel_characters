import 'package:flutter/material.dart';
import 'package:marvel_characters/utils/extensions.dart';
import 'package:marvel_characters/widgets/list_tile_character.dart';

import '../widgets/custom_padding.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPadding(
        child: Column(
          children: [
            kToolbarHeight.pv,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      child: Text("MF"),
                    ),
                    15.ph,
                    const Text("Marvel Fan")
                  ],
                ),
                100.ph,
                const Icon(
                  Icons.search,
                  size: 30,
                )
              ],
            ),
            30.pv,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Most beloved Characters',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            30.pv,
            SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const ListTileCharacter(
                    image: 'assets/ironMan.jpg',
                    title: 'Iron Man',
                  ),
                  20.ph,
                  const ListTileCharacter(
                    image: 'assets/spiderman.jpg',
                    title: 'Spiderman',
                  ),
                  20.ph,
                  const ListTileCharacter(
                    image: 'assets/thor.jpg',
                    title: 'Thor',
                  ),
                  20.ph,
                  const ListTileCharacter(
                    image: 'assets/captain-america.png',
                    title: 'Captain America',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
