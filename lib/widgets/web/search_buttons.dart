import 'package:flutter/material.dart';
import 'package:google_clone/widgets/web/search_button.dart';

class Searchbuttons extends StatelessWidget {
  const Searchbuttons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SearchButton(
              title: 'Google Search ',
            ),
            SizedBox(
              width: 15,
            ),
            SearchButton(
              title: 'I\'m felling lucky ',
            ),
          ],
        ),
      ],
    );
  }
}
