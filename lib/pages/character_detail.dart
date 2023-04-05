import 'package:flutter/material.dart';
import 'package:marvel_characters/utils/extensions.dart';
import 'package:marvel_characters/widgets/custom_image.dart';
import 'package:marvel_characters/widgets/custom_padding.dart';

class CharacterDetail extends StatelessWidget {
  const CharacterDetail({super.key});

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
                width: 200,
                child: CustomImage(child: Image.asset('assets/spiderman.jpg')),
              ),
              15.pv,
              const Text(
                'Spiderman',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.chair,
                    color: Colors.yellow,
                  ),
                  10.ph,
                  const Text(
                    '5 Events',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              30.pv,
              const Text(
                'Rick Jones has been Hulk\'s best bud since day one, but now he\'s more than a friend...he\'s a teammate! Transformed by a Gamma energy explosion, A-Bomb\'s thick, armored skin is just as strong and powerful as it is blue. And when he curls into action, he uses it like a giant bowling ball of destruction! ',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              )
            ],
          ),
        ));
  }
}
