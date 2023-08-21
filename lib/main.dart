import 'package:flutter/material.dart';

import 'package:getx_demo/init_controller.dart';

import 'simple_crudui.dart';

void main() {
  InitController.getAllController;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const SimpleCrudeDemoUi(),
      debugShowCheckedModeBanner: false,
    );
  }
}
