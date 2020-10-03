import 'package:bloc/bloc.dart';
import 'package:flutter_18_bloc_cubit/bloc/weather_bloc.dart';
import 'package:flutter_18_bloc_cubit/data/repositories/weather_repository.dart';
import 'package:flutter_18_bloc_cubit/exceptions/NetworkExceptions.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final WeatherRepository _weatherRepository;

  WeatherCubit(this._weatherRepository) : super(WeatherInitial());

  Future<void> getWeather(String cityName) async {
    try {
      emit(WeatherLoading());
      final weather = await _weatherRepository.fetchWeather(cityName);
      emit(WeatherLoaded(weather));
    } on NetworkExceptions {
      emit(WeatherError("couldn't fetch weather"));
    }
  }
}
