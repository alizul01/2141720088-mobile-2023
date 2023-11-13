import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:week_11_async/screens/home.dart';
import 'screens/screen_exporter.dart';
import 'controller/app_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
      initialBinding: BindingsBuilder(() {
        Get.put(AppController());
      }),
      home: HomeScreen(),
      getPages: [
        GetPage(
          name: '/',
          page: () => HomeScreen(),
        ),
        GetPage(
          name: '/counter',
          page: () => const CounterScreen(),
        ),
        GetPage(
          name: '/future',
          page: () => const FutureScreen(),
        ),
        GetPage(
          name: '/completer', // Tambahkan rute untuk CompleterScreen
          page: () => const CompleterScreen(),
        ),
      ],
    );
  }
}
