import 'package:flutter/material.dart';
import 'package:week_11_async/data/jokes.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
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
                  getData().then((response) {
                    if (response.statusCode == 200) {
                      setState(() {
                        res = response.body;
                      });
                    } else {
                      setState(() {
                        res = 'Error: ${response.statusCode}';
                      });
                    }
                  }).catchError((error) {
                    setState(() {
                      res = 'Error: $error';
                    });
                  });
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
}
