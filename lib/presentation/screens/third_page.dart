import 'package:flutter/material.dart';
import 'package:get_x/presentation/controllers/list_controller.dart';
import 'package:get_x/presentation/controllers/tap_controller.dart';
import 'package:get/get.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapControllerGetX controller = Get.find();
    ListController listController = Get.find();
    // ListController listController = Get.put(ListController());

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(8),
              width: double.maxFinite,
              height: 50,
              child: Center(
                child: GetBuilder<TapControllerGetX>(
                  builder: (_) => Text(
                    "X value: ${controller.x}",
                    style: const TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              width: double.maxFinite,
              height: 50,
              child: Center(
                child: Obx(
                  () => Text(
                    "Y value: ${Get.find<TapControllerGetX>().y.value}",
                    style: const TextStyle(fontSize: 30, color: Colors.blue),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              width: double.maxFinite,
              height: 50,
              child: Center(
                child: Obx(
                  () => Text(
                    "Total value: ${Get.find<TapControllerGetX>().z}",
                    style: const TextStyle(fontSize: 30, color: Colors.pink),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => controller.increaseY(),
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
                    'Increased Y',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => controller.totalXY(),
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
                    'Total X + Y',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => listController.setValues(controller.z),
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
                    'Save Total',
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
