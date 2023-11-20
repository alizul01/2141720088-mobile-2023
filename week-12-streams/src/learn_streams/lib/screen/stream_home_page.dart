import 'package:flutter/material.dart';
import '../utils/stream.dart';
import 'dart:async';
import 'dart:math';

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  Color bgColor = Colors.deepPurple;
  late ColorStream colorStream;

  int lastNumber = 0;
  late StreamController<int> _numberStreamController;
  late NumberStream numberStream;

  void changeColor() async {
    colorStream = ColorStream();
    await for (Color color in colorStream.getColors()) {
      setState(() {
        bgColor = color;
      });
    }
  }

  void addRandomNumber() {
    Random random = Random();
    // int myNum = random.nextInt(10);
    // numberStream.addNumber(myNum);
    numberStream.addError();
  }

  @override
  void initState() {
    numberStream = NumberStream();
    _numberStreamController = numberStream.streamController;
    Stream stream = _numberStreamController.stream;
    stream.listen((event) {
      setState(() {
        lastNumber = event;
      });
    }).onError((error) {
      setState(() {
        lastNumber = -1;
      });
    });
    super.initState();
    colorStream = ColorStream();
    changeColor();
  }

  @override
  void dispose() {
    numberStream.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stream'),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(lastNumber.toString()),
              ElevatedButton(
                  onPressed: () => addRandomNumber(),
                  child: const Text('Add Random Number')),
            ],
          ),
        ));
  }
}
