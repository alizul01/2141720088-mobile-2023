import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:week_11_async/controller/app_controller.dart';
import 'screen_exporter.dart';

class HomeScreen extends StatelessWidget {
  final AppController appController = Get.put(AppController());

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Obx(() {
        final selectedScreenIndex = appController.selectedScreenIndex.value;
        if (selectedScreenIndex == 0) {
          return const CounterScreen();
        } else if (selectedScreenIndex == 1) {
          return const FutureScreen();
        }
        return Container(); // You can handle more screens here
      }),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Counter',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timer),
            label: 'Future',
          ),
        ],
        currentIndex: appController.selectedScreenIndex.value,
        onTap: (index) {
          appController.changeSelectedScreen(index);
        },
      ),
    );
  }
}
