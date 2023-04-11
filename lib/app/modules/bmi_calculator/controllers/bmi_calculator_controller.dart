import 'dart:math' as math;

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:step_1/app/utils/alerd_dilog.dart';

class BmiCalculatorController extends GetxController {
  RxBool isfamale = false.obs;
  RxDouble height = 180.5.obs;
  RxInt weight = 60.obs;
  RxInt age = 28.obs;

  void isFemalefalse() => isfamale.value = false;
  void isFemaletrue() => isfamale.value = true;
  void changeHeight(double value) => height.value = value;
  void changeWeight(int value) => weight.value = value;
  void changeAge(int value) => age.value = value;

  void shovResult(BuildContext context) {
    final res = weight / math.pow(height / 100, 2);
    // print(res.toInt());

    if (res <= 18) {
      // print("aryyk jee");
      showMyDialog(context: context, text: 'hudoi');
    } else if (res >= 18 && res <= 24) {
      // print("norma");
      showMyDialog(context: context, text: 'norma');
    } else if (res >= 25) {
      // print("Semiz");
      showMyDialog(context: context, text: 'lishnyi ves');
    } else if (res >= 26) {
      // print('$res eseptei albai kalday');
      showMyDialog(context: context, text: 'tolstyi');
    }
  }
}
