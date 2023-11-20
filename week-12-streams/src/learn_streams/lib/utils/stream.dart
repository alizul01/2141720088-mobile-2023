import 'package:flutter/material.dart';

class ColorStream {
  final List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
  ];

  Stream<Color> get stream async* {
    while (true) {
      for (final color in colors) {
        yield color;
      }
    }
  }
  
}
