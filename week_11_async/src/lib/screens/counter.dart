import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;
  bool isLoading = false; // Flag to indicate whether data is being loaded

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter Value: $counter',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _incrementCounterAsync();
              },
              child: const Text('Increment Counter (Async)'),
            ),
            if (isLoading)
              const CircularProgressIndicator(), // Display loading indicator while fetching data
          ],
        ),
      ),
    );
  }

  Future<void> _incrementCounterAsync() async {
    setState(() {
      isLoading = true; // Set loading flag to true while fetching data
    });

    final one = await returnOneAsync();
    final two = await returnTwoAsync();
    final three = await returnThreeAsync();

    setState(() {
      counter = one + two + three;
      isLoading = false; // Set loading flag to false when data is fetched
    });
  }

  Future<int> returnOneAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 1;
  }

  Future<int> returnTwoAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 2;
  }

  Future<int> returnThreeAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 3;
  }
}
