import 'package:dio/dio.dart';
import 'package:step_1/app/constants/api_const.dart';
import 'package:step_1/app/models/weather_model.dart';

// 1. serverden Linki bolush kerek =>ApiConst.weatherApi
// 2.Linkke reg jibere turgan kitepkana kerek (Dio,http)=>Dio()
// 3.kelgen jooptun status kodun teksherebiz
// 4.status cod 200go barabar bolso datasyn Weather model tyzobuz
// 5.modeldi return kylabyz
// 6.status cod 200go barabar emes bolso null return kylabyz
class WeatherRepo {
  final dio = Dio();
  Future<Weather?> getWeather() async {
    final response = await dio.get(ApiConst.weatherApi);
    if (response.statusCode == 200 || response.statusCode == 201) {
      final weather = Weather.fromJson(response.data);
      return weather;
    } else {
      return null;
    }
  }
}
