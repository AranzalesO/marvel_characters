import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:marvel_characters/utils/extensions.dart';
import 'package:marvel_characters/widgets/list_row_tile_characters.dart';
import 'package:marvel_characters/widgets/list_tile_character.dart';

import 'package:http/http.dart' as http;
import '../widgets/custom_padding.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map data = {};
  final url =
      "https://gateway.marvel.com/v1/public/characters?apikey=57efd54181cb80028b78e6ca9c3587ef&hash=e50d3d3cb8be50d230afecacddefdbde&ts=100";

  void fetchCharacters() async {
    final response = await http.get(Uri.parse(url));
    data = jsonDecode(response.body);
    setState(() {});
  }

  @override
  void initState() {
    fetchCharacters();
    super.initState();
  }

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
            ),
            30.pv,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Other characters may include:',
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
            15.pv,
            Expanded(
              child: data['data']['results'] != null
                  ? ListView.builder(
                      itemCount: data['data']['results'].length,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return ListTileRowCharacters(
                          title: data['data']['results'][index]['name'],
                          image:
                              '${data['data']['results'][index]['thumbnail']['path']}.${data['data']['results'][index]['thumbnail']['extension']}',
                          events: data['data']['results'][index]['events']
                              ['available'],
                          comics: data['data']['results'][index]['comics']
                              ['available'],
                          series: data['data']['results'][index]['series']
                              ['available'],
                        );
                      })
                  : const Center(
                      child: CircularProgressIndicator(),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
