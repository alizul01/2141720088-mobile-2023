import 'package:flutter/material.dart';
import 'data/jokes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dad Jokes App', // Ganti judul aplikasi
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
      ),
      home: const FuturePage(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String res = '';
  final jokesRepository =
      JokesRepository(); // Inisialisasi objek jokesRepository

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
              onPressed: () async {
                // Tambahkan penundaan selama 2 detik sebelum menampilkan lelucon
                await Future.delayed(const Duration(seconds: 2));
                setState(() {
                  res = jokesRepository
                      .getRandomJoke(); // Ambil lelucon acak dari jokesRepository
                });
              },
              child: const Text('Get Data'),
            ),
          ],
        ),
      ),
    );
  }
}
