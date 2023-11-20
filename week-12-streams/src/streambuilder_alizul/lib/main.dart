import 'package:flutter/material.dart';
import 'stream.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Roboto', // Ganti fontFamily jika diperlukan
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
      ),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Demo'),
      ),
      body: Center(
        child: StreamBuilder<int>(
          stream: NumberStream().getNumbers(),
          initialData: 0,
          builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
            if (snapshot.hasError) {
              return Text(
                'Error: ${snapshot.error}',
                style: const TextStyle(
                    color: Colors.red), // Tambahkan gaya untuk warna teks
              );
            }
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return const Text('No data', style: TextStyle(fontSize: 18));
              case ConnectionState.waiting:
                return const Text('Awaiting data...',
                    style: TextStyle(fontSize: 18));
              case ConnectionState.active:
                return Text(
                  'Active data: ${snapshot.data}',
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white), // Gaya untuk warna teks
                );
              case ConnectionState.done:
                return const Text('Stream is closed',
                    style: TextStyle(fontSize: 18));
            }
          },
        ),
      ),
    );
  }
}
