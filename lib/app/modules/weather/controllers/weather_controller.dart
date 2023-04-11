import 'package:get/get.dart';
import 'package:step_1/app/models/weather_model.dart';
import 'package:step_1/app/repositories/weather_repo.dart';

class WeatherController extends GetxController {
  Rx<Weather?> weather = Rxn();
  final repo = WeatherRepo();

  Future<void> getWeather() async {
    weather.value = await repo.getWeather();
  }

  @override
  void onInit() {
    super.onInit();
    getWeather();
  }
}
