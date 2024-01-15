import 'package:flutter/material.dart';
import 'package:get_x/presentation/controllers/tap_controller.dart';
import 'package:get/get.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapControllerGetX controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios_sharp),
        ),
      ),
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(24),
              width: double.maxFinite,
              height: 50,
              child: Center(
                child: GetBuilder<TapControllerGetX>(
                  builder: (_) => Text(
                    controller.x.toString(),
                    style: const TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => controller.decreaseX(),
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
                    'Tab -1',
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
