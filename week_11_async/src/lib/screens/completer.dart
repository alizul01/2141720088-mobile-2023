import 'dart:async';
import 'package:flutter/material.dart';

class CompleterScreen extends StatefulWidget {
  const CompleterScreen({Key? key}) : super(key: key);

  @override
  State<CompleterScreen> createState() => _CompleterScreenState();
}

class _CompleterScreenState extends State<CompleterScreen> {
  String result = ''; // Variable to display the result

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Completer Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Result: $result',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _incrementCounterAsync();
              },
              child: const Text('Increment Counter (Async)'),
            ),
          ],
        ),
      ),
    );
  }

  Future<int> getNumber() async {
    Completer<int> completer = Completer<int>();
    calculate(completer);
    return completer.future;
  }

  Future<void> calculate(Completer<int> completer) async {
    await Future.delayed(const Duration(seconds: 5));
    completer.complete(42);
  }

  void _incrementCounterAsync() {
    setState(() {
      result = 'Loading...';
    });

    getNumber().then((value) {
      setState(() {
        result = value.toString();
      });
    }).catchError((e) {
      setState(() {
        result = 'An error occurred';
      });
    });
  }
}
