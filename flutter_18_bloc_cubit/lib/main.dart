import 'package:flutter/material.dart';
import 'package:flutter_18_bloc_cubit/bloc/weather_bloc.dart';
import 'package:flutter_18_bloc_cubit/data/repositories/weather_repository.dart';
import 'package:flutter_18_bloc_cubit/screens/weathersearch_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocProvider(
        create: (context) => WeatherBloc(FakeWeatherRepository()),
        child: WeatherSearch(),
      ),
    );
  }
}
