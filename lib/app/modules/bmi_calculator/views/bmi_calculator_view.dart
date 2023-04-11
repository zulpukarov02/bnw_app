import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:step_1/app/constants/app_text.dart';
import 'package:step_1/app/theme/app_colors.dart';
import 'package:step_1/app/utils/calculet.dart';
import 'package:step_1/app/utils/slaider.dart';
import 'package:step_1/app/utils/status_card.dart';
import 'package:step_1/app/utils/weweightage.dart';
import '../controllers/bmi_calculator_controller.dart';

class BmiCalculatorView extends GetView<BmiCalculatorController> {
  const BmiCalculatorView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ctl = controller;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.bgColor,
        title: const Text(AppText.appBarTitle),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Obx(() {
                    return StatusCard(
                      onTap: () {
                        ctl.isFemalefalse;
                      },
                      icon: Icons.male,
                      text: AppText.male,
                      isFemale: !ctl.isfamale.value,
                    );
                  }),
                  const SizedBox(
                    width: 15,
                  ),
                  Obx(() {
                    return StatusCard(
                      onTap: () {
                        ctl.isFemaletrue;
                      },
                      icon: Icons.female,
                      text: AppText.female,
                      isFemale: ctl.isfamale.value,
                    );
                  }),
                ],
              ),
            ),
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: AppColors.cardColor,
                child: Obx(() {
                  return SlaiderWidget(
                    height: ctl.height.toStringAsFixed(1),
                    value: ctl.height.value,
                    onChanged: ctl.changeHeight,
                  );
                }),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Obx(() {
                    return WeightAge(
                      text: AppText.weight,
                      value: ctl.weight.value,
                      remove: ctl.changeWeight,
                      add: ctl.changeWeight,
                    );
                  }),
                  const SizedBox(
                    width: 10,
                  ),
                  Obx(() {
                    return WeightAge(
                      text: AppText.age,
                      value: ctl.age.value,
                      remove: ctl.changeAge,
                      add: ctl.changeAge,
                    );
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Calculete(
        onTap: () => ctl.shovResult(context),
      ),
    );
  }
}
