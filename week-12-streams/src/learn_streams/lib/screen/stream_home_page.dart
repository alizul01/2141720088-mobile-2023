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
  late StreamSubscription subscription;
  late StreamSubscription subscription2;

  String values = '';
  StreamTransformer<int, int> transformer =
      StreamTransformer<int, int>.fromHandlers(
          handleData: (value, sink) {
            sink.add(value * 10);
          },
          handleError: (error, trace, sink) {
            sink.add(-1);
          },
          handleDone: (sink) => sink.close());
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
    int myNum = random.nextInt(10);
    if (!numberStream.streamController.isClosed) {
      numberStream.addNumber(myNum);
    } else {
      setState(() {
        lastNumber = -1;
      });
    }
  }

  @override
  void initState() {
    numberStream = NumberStream();
    _numberStreamController = numberStream.streamController;
    Stream stream = _numberStreamController.stream.asBroadcastStream();
    subscription = stream.listen((event) {
      setState(() {
        values += '$event - ';
      });
    });

    subscription.onError((error) {
      print(error);
      setState(() {
        lastNumber = -1;
      });
    });
    subscription.onDone(() {
      print('Done');
    });

    super.initState();
    colorStream = ColorStream();
    changeColor();
  }

  @override
  void dispose() {
    numberStream.close();
    subscription.cancel();
    super.dispose();
  }

  void stopStream() {
    numberStream.addError();
    numberStream.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        color: Colors.purple.shade50,
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                values,
                style: const TextStyle(fontSize: 18.0),
              ),
              ElevatedButton(
                onPressed: () => addRandomNumber(),
                child: const Text('Add Random Number'),
              ),
              ElevatedButton(
                onPressed: () => stopStream(),
                child: const Text('Stop Stream'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
