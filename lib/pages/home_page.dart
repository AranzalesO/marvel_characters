import 'package:flutter/material.dart';
import 'package:marvel_characters/utils/extensions.dart';

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
                const Icon(Icons.search)
              ],
            )
          ],
        ),
      ),
    );
  }
}
