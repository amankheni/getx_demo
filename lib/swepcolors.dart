import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'swepController.dart';

class SwepColorUi extends StatelessWidget {
  const SwepColorUi({super.key});

  @override
  Widget build(BuildContext context) {
    ColorController colorController = Get.find();
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Wrap(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    colorController.colorData.length,
                    (index) => GestureDetector(
                      onTap: () {
                        colorController.changColor(index);
                      },
                      child: Card(
                        child: Container(
                          height: 150,
                          width: 150,
                          color: colorController.colorData[index],
                        ),
                      ),
                    ),
                  ),
                ),
              )
              // TextButton(
              //   onPressed: () {
              //     ColorController.swapColor();
              //     setState(() {});
              //   },
              //   child: const Card(
              //     child: Text(
              //       'Swap',
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
