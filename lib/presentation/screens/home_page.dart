import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/presentation/controllers/tap_controller.dart';
import 'package:get_x/presentation/screens/first_page.dart';
import 'package:get_x/presentation/screens/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TapControllerGetX controller = Get.put(TapControllerGetX());
    TapControllerGetX controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: GetBuilder<TapControllerGetX>(builder: (_) {
          return Text('Counter: ${controller.x}');
        }),
      ),
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => controller.increaseX(),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                width: double.maxFinite,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFF89dad0),
                ),
                child: const Center(
                  child: Text(
                    'Tab +1',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Get.to(() => const FirstPage()),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                width: double.maxFinite,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFF89dad0),
                ),
                child: const Center(
                  child: Text(
                    'Go to firsh page',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Get.to(() => const SecondPage()),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                width: double.maxFinite,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFF89dad0),
                ),
                child: const Center(
                  child: Text(
                    'Go to second page',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
