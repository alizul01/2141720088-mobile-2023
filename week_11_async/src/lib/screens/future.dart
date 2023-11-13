import 'package:flutter/material.dart';
import 'package:week_11_async/data/jokes.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class FutureScreen extends StatefulWidget {
  const FutureScreen({super.key});

  @override
  State<FutureScreen> createState() => _FutureScreenState();
}

class _FutureScreenState extends State<FutureScreen> {
  String res = '';
  final jokesRepository = JokesRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dad Jokes App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              res,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Future.delayed(const Duration(seconds: 2)).then((_) {
                  _incrementCounterAsync();
                });
              },
              child: const Text('Get Data'),
            ),
          ],
        ),
      ),
    );
  }

  Future<Response> getData() async {
    const authority = 'www.googleapis.com';
    const path = '/books/v1/volumes/junbDwAAQBAJ';
    final uri = Uri.https(authority, path);
    return await http.get(uri);
  }

  Future<String> fetchJoke() async {
    try {
      final joke = jokesRepository.getRandomJoke();
      return joke;
    } catch (error) {
      return 'Error: $error';
    }
  }

  Future<void> _incrementCounterAsync() async {
    setState(() {
      res = 'Loading...';
    });

    fetchJoke().then((value) {
      setState(() {
        res = value;
      });
    });
  }
}
