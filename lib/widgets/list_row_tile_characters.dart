import 'package:flutter/material.dart';
import 'package:marvel_characters/utils/extensions.dart';

class ListTileRowCharacters extends StatelessWidget {
  const ListTileRowCharacters(
      {super.key,
      required this.title,
      required this.image,
      required this.events,
      required this.comics,
      required this.series});

  final String title;
  final String image;
  final int events;
  final int comics;
  final int series;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(height: 150, child: Image.asset(image)),
        15.ph,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 16),
              ),
              8.pv,
              Row(
                children: [
                  const Icon(
                    Icons.chair,
                    color: Colors.yellow,
                  ),
                  10.ph,
                  Text(
                    '$events Events',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              15.pv,
              Text(
                'Comics: $comics',
                style: const TextStyle(color: Colors.grey, fontSize: 14),
              ),
              10.pv,
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  'Series: $series',
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const Icon(Icons.arrow_right_alt_sharp),
              ]),
            ],
          ),
        )
      ],
    );
  }
}
