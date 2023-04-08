import 'package:get/get.dart';

import '../modules/bmi_calculator/bindings/bmi_calculator_binding.dart';
import '../modules/bmi_calculator/views/bmi_calculator_view.dart';

import '../modules/news/bindings/news_binding.dart';
import '../modules/news/views/news_view.dart';
import '../modules/weather/bindings/weather_binding.dart';
import '../modules/weather/views/weather_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.NEWS;
  // ignore: constant_identifier_names
  static const Weather = Routes.WEATHER;

  static final routes = [
    GetPage(
      name: _Paths.NEWS,
      page: () => const NewsView(),
      binding: NewsBinding(),
    ),
    GetPage(
      name: _Paths.WEATHER,
      page: () => const WeatherView(),
      binding: WeatherBinding(),
    ),
    GetPage(
      name: _Paths.BMI_CALCULATOR,
      page: () => const BmiCalculatorView(),
      binding: BmiCalculatorBinding(),
    ),
  ];
}
