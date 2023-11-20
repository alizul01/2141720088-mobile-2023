import 'package:flutter/material.dart';
import 'dart:async';

class NumberStream {
  final StreamController<int> streamController = StreamController<int>();

  void addNumber(int number) {
    streamController.sink.add(number);
  }

  close() {
    streamController.close();
  }
}

class ColorStream {
  final List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
  ];

  Stream<Color> getColors() async* {
    yield* Stream.periodic(const Duration(seconds: 1), (int index) {
      return colors[index % colors.length];
    });
  }
}
