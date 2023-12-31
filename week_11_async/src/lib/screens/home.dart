import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:week_11_async/controller/app_controller.dart';
import 'screen_exporter.dart';

class HomeScreen extends StatelessWidget {
  final AppController appController = Get.put(AppController());

  HomeScreen({Key? key}) : super(key: key);

  final List<Widget> screens = [
    const CounterScreen(),
    const FutureScreen(),
    const LocationScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        final selectedScreenIndex = appController.selectedScreenIndex.value;
        return screens[selectedScreenIndex];
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
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Location',
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
