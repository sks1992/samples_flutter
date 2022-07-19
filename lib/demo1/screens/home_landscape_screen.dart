import 'package:flutter/material.dart';

import '../../demo1//widgets/card_1_widgets.dart';

class HomeLandScapeScreen extends StatelessWidget {
  const HomeLandScapeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Expanded(
                child: Card1(
                  card1Text: "Card 11",
                ),
              ),
              Expanded(
                child: Card1(
                  card1Text: "Card 12",
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Expanded(
                child: Card1(
                  card1Text: "Card 31",
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Expanded(
              child: Card1(
                card1Text: "Card 41",
              ),
            ),
            Expanded(
              child: Card1(
                card1Text: "Card 51",
              ),
            ),
          ],
        ))
      ],
    );
  }
}
