import 'package:flutter/material.dart';

import 'home_landscape_screen.dart';
import 'home_portrait_screen.dart';

class HomeScreen1 extends StatelessWidget {
  const HomeScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Set constrains for height and width for decide which mode we need to
      /// show screen on app
      body: LayoutBuilder(
        builder: (context, constrain) {
          print("${constrain.maxHeight}");
          print("${constrain.maxWidth}");
          if (constrain.maxHeight < 600) {
            return MediaQuery.of(context).orientation == Orientation.portrait
                ? const HomePortraitScreen()
                : const HomeLandScapeScreen();
          } else {
            return const HomePortraitScreen();
          }
        },
      ),
      /** Using  MediaQuery Orientation to decide mode of app
          MediaQuery.of(context).orientation == Orientation.portrait
          ? const HomePortraitScreen()
          : const HomeLandScapeScreen(),*/
      appBar: AppBar(
        title: const Text("Hello Sandeep!"),
      ),
    );
  }
}
