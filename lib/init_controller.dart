import 'package:get/get.dart';
import 'package:getx_demo1/counter_ex.dart/counterex_controller.dart';
import 'package:getx_demo1/counterapp_controller.dart';
import 'package:getx_demo1/gender_hobby/gender_hobby_controller.dart';

class InitController {
  static get getAllController {
    Get.lazyPut(() => CounterController());
    Get.lazyPut(() => CounterExContoller());
    Get.lazyPut(() => GenderHobbyController());
  }
}
