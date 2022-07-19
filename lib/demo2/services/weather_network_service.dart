import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

import '../models/weather.dart';

class WeatherNetworkService {
  static Future<Weather> getWeatherData(cityName) async {
    /// Environment is my personal API keystore and not in Github, just grab your own from
    /// https://home.openweathermap.org/api_keys
    /// 1. Register
    /// 2. Generate Api key
    var openWeatherUrl = Uri.parse(
        "http://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=defc506846a8a408b3c73c95cb1ed2de");

    var response = await http.get(openWeatherUrl);
    await Future.delayed(const Duration(seconds: 2));
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      return Weather.fromJson(jsonResponse);
    } else {
      throw Exception(response.statusCode);
    }
  }
}
