import 'package:flutter/material.dart';

import '../constants.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({
    Key? key,
    required this.controller,
    required this.myIcon,
    required this.myLabelText,
    this.toHide = false,
  }) : super(key: key);

  final TextEditingController controller;

  final IconData myIcon;
  final String myLabelText;
  final bool toHide;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: toHide,
      controller: controller,
      decoration: InputDecoration(
        icon: Icon(myIcon),
        labelText: myLabelText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: borderColor),
        ),
      ),
    );
  }
}
