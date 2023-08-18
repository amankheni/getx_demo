import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorController extends GetxController {
  RxList colorData = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.brown,
    Colors.cyan,
    Colors.black,
    Colors.amber,
    Colors.deepPurple,
  ].obs;

  RxInt? oldIndex, newIndex;
  RxBool isOldIndex = true.obs;

  void changColor(int index) {
    if (isOldIndex.value == true) {
      oldIndex = index.obs;
      isOldIndex = false.obs;
    } else {
      newIndex = index.obs;
      Color swapColor = colorData[oldIndex!.value];
      colorData[oldIndex!.value] = colorData[newIndex!.value];
      colorData[newIndex!.value] = swapColor;
      isOldIndex = false.obs;
    }
  }

  // static void swapColor() {
  //   Color swapColor = colorData[oldIndex!];
  //   colorData[oldIndex!] = colorData[newIndex!];
  //   colorData[newIndex!] = swapColor;
  // }
}
