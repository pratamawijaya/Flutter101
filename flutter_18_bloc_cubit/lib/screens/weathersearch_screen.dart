import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_18_bloc_cubit/cubit/weather_cubit.dart';
import 'package:flutter_18_bloc_cubit/domain/entity/weather.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherSearch extends StatefulWidget {
  @override
  _WeatherSearchState createState() => _WeatherSearchState();
}

class _WeatherSearchState extends State<WeatherSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        alignment: Alignment.center,
        child: buildInitialInput(),
      ),
    );
  }

  Widget buildInitialInput() {
    return Center(
      child: CityInput(),
    );
  }

  Widget buildLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget buildColumnWithData(Weather weather) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(weather.cityName),
        Text(
          "${weather.temperatureCelcius} °C",
        ),
        CityInput()
      ],
    );
  }
}

class CityInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: TextField(
        onSubmitted: (value) => submitCityName(context, value),
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          hintText: "Enter City",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          suffixIcon: Icon(Icons.search),
        ),
      ),
    );
  }

  void submitCityName(BuildContext context, String value) {
    final weatherCubit = context.bloc<WeatherCubit>();
    weatherCubit.getWeather(value);
  }
}
