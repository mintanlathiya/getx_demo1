import 'package:get/get.dart';
import 'package:getx_demo1/counter_ex.dart/counterex_controller.dart';
import 'package:getx_demo1/counterapp_controller.dart';

class InitController {
  static get getAllController {
    Get.put(CounterController());
    Get.put(CounterExContoller());
  }
}
