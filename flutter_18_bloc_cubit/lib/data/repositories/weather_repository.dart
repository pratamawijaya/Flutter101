import 'dart:math';

import 'package:flutter_18_bloc_cubit/domain/entity/weather.dart';
import 'package:flutter_18_bloc_cubit/exceptions/NetworkExceptions.dart';

abstract class WeatherRepository {
  Future<Weather> fetchWeather(String cityName);
}

class FakeWeatherRepository implements WeatherRepository {
  @override
  Future<Weather> fetchWeather(String cityName) {
    return Future.delayed(Duration(seconds: 1), () {
      final random = Random();

      if (random.nextBool()) {
        throw NetworkExceptions();
      }

      double randomSuhu = 20 + random.nextInt(15) + random.nextDouble();

      return Weather(
        cityName: cityName,
        temperatureCelsius: randomSuhu,
      );
    });
  }
}
