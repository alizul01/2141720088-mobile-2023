import 'package:flutter/material.dart';
import 'screens/screen_exporter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        switchTheme: SwitchThemeData(
          thumbColor: MaterialStateProperty.all(Colors.purple),
          trackColor: MaterialStateProperty.all(Colors.purple[100]),
        ),
        useMaterial3: true,
      ),
      home: const CounterPage(),
    );
  }
}
