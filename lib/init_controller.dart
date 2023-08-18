import 'package:get/get.dart';
import 'package:getx_demo1/color_swap/color_swap_controller.dart';
import 'package:getx_demo1/counter_ex.dart/counterex_controller.dart';
import 'package:getx_demo1/counterapp_controller.dart';
import 'package:getx_demo1/gender_hobby/gender_hobby_controller.dart';
import 'package:getx_demo1/simple_crud/crud_controller.dart';
import 'package:getx_demo1/simple_crud/simple_crud_controller.dart';
import 'package:getx_demo1/tictac/tic_tac_controller.dart';
import 'package:getx_demo1/tictac/tic_tic_controller.dart';

class InitController {
  static get getAllController {
    Get.lazyPut(() => CounterController());
    Get.lazyPut(() => CounterExContoller());
    Get.lazyPut(() => UiController());
    Get.lazyPut(() => TicTacControllermy());
    Get.lazyPut(() => TicTacController());
    Get.lazyPut(() => ColorSwapController());
    Get.lazyPut(() => SimpleCrudContoller());
    Get.lazyPut(() => CrudController());
  }
}
