import 'package:get/get.dart';
import 'package:getx_demo/counterapp_controller.dart';
import 'package:getx_demo/crud_controller.dart';
import 'package:getx_demo/form_controller.dart';
import 'package:getx_demo/incre&decrement/incrementdecrement_controller.dart';
import 'package:getx_demo/simple_crud_controller.dart';
import 'package:getx_demo/swepController.dart';
import 'package:getx_demo/tictaktoi_controller.dart';

class InitController {
  static get getAllController {
    Get.put(CounterController());
    Get.put(IncreAndDecrementController());
    Get.put(FormController());
    Get.put(ColorController());
    Get.put(CrudController());
    Get.put(SimpleCrudContoller());
    Get.put(TicTacController());
  }
}
