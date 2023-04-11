import 'package:flutter/material.dart';
import 'package:step_1/app/theme/app_colors.dart';

class AppTexStyle {
  static const TextStyle newsTextstyle = TextStyle(
    fontSize: 15,
    color: AppColors.white,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle newsDetailStyle = TextStyle(
    fontSize: 20,
    color: AppColors.black,
    fontWeight: FontWeight.w800,
  );
  static const TextStyle timeDate = TextStyle(
    fontSize: 17,
    color: AppColors.black,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle detailDescripshin = TextStyle(
    fontSize: 17,
    color: AppColors.black,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle appBartitle =
      TextStyle(color: AppColors.black, fontSize: 28);
  static const TextStyle centrtitle =
      TextStyle(fontSize: 86, color: AppColors.white);
  static const TextStyle temp = TextStyle(fontSize: 96, color: AppColors.white);
}
