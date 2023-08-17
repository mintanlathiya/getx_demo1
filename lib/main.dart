import 'package:flutter/material.dart';
import 'package:getx_demo1/color_swap/color_swap_ui.dart';
import 'package:getx_demo1/init_controller.dart';

void main() {
  InitController.getAllController;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColorSwapUiDemo(),
    );
  }
}
