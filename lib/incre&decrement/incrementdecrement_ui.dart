import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/incre&decrement/incrementdecrement_controller.dart';

class IncrementDecrementUi extends StatelessWidget {
  const IncrementDecrementUi({super.key});

  @override
  Widget build(BuildContext context) {
    IncreAndDecrementController increAndDecrementController = Get.find();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                MaterialButton(
                  onPressed: () {
                    increAndDecrementController.countBy1--;
                  },
                  child: const Text('--'),
                ),
                Obx(
                  () => Text(
                    increAndDecrementController.countBy1.value.toString(),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    increAndDecrementController.countBy1++;
                  },
                  child: const Icon(Icons.add),
                )
              ],
            ),
            Row(
              children: [
                MaterialButton(
                  onPressed: () {
                    increAndDecrementController.countBy2 - 2;
                  },
                  child: const Text('--'),
                ),
                Obx(
                  () => Text(
                    increAndDecrementController.countBy2.value.toString(),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    increAndDecrementController.countBy2 + 2;
                  },
                  child: const Icon(Icons.add),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
