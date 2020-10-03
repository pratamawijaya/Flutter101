import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_18_bloc_cubit/data/repositories/weather_repository.dart';
import 'package:flutter_18_bloc_cubit/domain/entity/weather.dart';
import 'package:flutter_18_bloc_cubit/exceptions/NetworkExceptions.dart';
import 'package:meta/meta.dart';

part 'weather_event.dart';

part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository _weatherRepository;

  WeatherBloc(this._weatherRepository) : super(WeatherInitial());

  @override
  Stream<WeatherState> mapEventToState(
    WeatherEvent event,
  ) async* {
    if (event is GetWeather) {
      try {
        yield WeatherLoading();
        final weather = await _weatherRepository.fetchWeather(event.cityName);
        yield WeatherLoaded(weather);
      } on NetworkExceptions {
        yield WeatherError("Couldn't fetch weather. Is the device online?");
      }
    }
  }
}
