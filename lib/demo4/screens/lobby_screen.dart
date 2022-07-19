import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'game_screen.dart';

class LobbyScreen extends StatelessWidget {
  const LobbyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lobby Screen"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Flexible(
            child: Image.asset("assets/undraw.co/arrived.png"),
          ),
          Card(
            child: Column(
              children: <Widget>[
                Text(
                  "Wait here till your friends arrive!",
                  style: GoogleFonts.sawarabiGothic(fontSize: 62.0),
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GameScreen()));
                  },
                  child: const Text(
                    "Start the game!",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
