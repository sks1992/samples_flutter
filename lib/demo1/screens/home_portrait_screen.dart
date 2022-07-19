import 'package:flutter/material.dart';

import '../../demo1/widgets/card_1_widgets.dart';

class HomePortraitScreen extends StatelessWidget {
  const HomePortraitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Expanded(
                child: Card1(
                  card1Text: "Card 1",
                ),
              ),
              Expanded(
                child: Card1(
                  card1Text: "Card 2",
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Expanded(
                child: Card1(
                  card1Text: "Card 3",
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Expanded(
                child: Card1(
                  card1Text: "Card 4",
                ),
              ),
              Expanded(
                child: Card1(
                  card1Text: "Card 5",
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
