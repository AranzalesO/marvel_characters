import 'package:flutter/material.dart';
import 'package:marvel_characters/utils/extensions.dart';
import 'package:marvel_characters/widgets/custom_image.dart';
import 'package:marvel_characters/widgets/custom_padding.dart';

import '../models/character.dart';
import '../widgets/list_row_tile_characters.dart';
import '../widgets/list_tile_character.dart';

// ignore: must_be_immutable
class CharacterDetail extends StatelessWidget {
  final Character character;
  const CharacterDetail({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: themeData.scaffoldBackgroundColor,
          shadowColor: Colors.white.withOpacity(0),
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: CustomPadding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 250,
                child: CustomImage(child: Image.network(character.image)),
              ),
              15.pv,
              Text(
                character.title,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              10.pv,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.chair,
                    color: Colors.yellow,
                  ),
                  10.ph,
                  Text(
                    '${character.events} Events',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  20.ph,
                  Text(
                    'Comics: ${character.comics}',
                    style: const TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  20.ph,
                  const Icon(
                    Icons.book,
                    color: Colors.yellow,
                  ),
                  7.ph,
                  Text(
                    'Stories: ${character.stories}',
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              10.pv,
              Text(
                character.description,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              15.pv,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.movie,
                    color: Colors.yellow,
                  ),
                  10.ph,
                  Text(
                    '${character.series} Series',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              10.pv,
              Expanded(
                child: character.seriesNames != null
                    ? ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: character.seriesNames.length,
                        itemBuilder: (context, index) {
                          return Row(children: [
                            ListTileCharacter(
                              image: 'assets/serie-image.jpg',
                              title: character.seriesNames[index],
                            ),
                            20.ph
                          ]);
                        },
                      )
                    : const Center(
                        child: CircularProgressIndicator(),
                      ),
              ),
            ],
          ),
        ));
  }
}
