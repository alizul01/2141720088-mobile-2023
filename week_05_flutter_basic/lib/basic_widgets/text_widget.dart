import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const Text(
      "Haii! Namaku Ali Zulfikar, lagi belajar tentang mobile dev nih~",
      style: TextStyle(color: Colors.red, fontSize: 14),
      textAlign: TextAlign.center,
    );
  }}