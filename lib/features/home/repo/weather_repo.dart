import 'package:day5/features/home/model/weather.dart';
import 'package:dio/dio.dart';

const apiUrl =
    "https://api.weatherapi.com/v1/current.json?key=8587a2cd4567457d9f615102250703&q=KTM";

class WeatherRepo {
  static Future<WeatherModel?> getWeatherData() async {
    try {
      final response = await Dio().get(apiUrl);

      final data = response.data;

      final weatherModel = WeatherModel.fromJson(data);

      return weatherModel;
    } on DioException catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}
