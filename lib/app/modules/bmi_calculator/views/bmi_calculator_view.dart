import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bmi_calculator_controller.dart';

class BmiCalculatorView extends GetView<BmiCalculatorController> {
  const BmiCalculatorView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BmiCalculatorView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BmiCalculatorView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
