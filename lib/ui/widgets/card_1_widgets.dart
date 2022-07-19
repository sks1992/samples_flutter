import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  final String card1Text;

  const Card1({Key? key, required this.card1Text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Text(card1Text),
      ),
    );
  }
}
