import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_example/screens/cubit/weather_cubit.dart';

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  String cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Weather"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: BlocConsumer<WeatherCubit, WeatherState>(
          listener: (context, state) {
            if (state is WeatherError) {
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                ),
              );
            }
          },
          builder: (context, state) {
            if (state is WeatherInitial) {
              return buildInitialData(context);
            } else if (state is WeatherLoading) {
              return buildLoadingIndicator();
            } else if (state is WeatherLoaded) {
              return buildContent(
                  cityName: state.weather.cityName,
                  temperature: state.weather.temperatureCelcius);
            } else {
              return buildInitialData(context);
            }
          },
        ),
      ),
    );
  }

  Container buildContent({String cityName, double temperature}) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Text(
            cityName,
            style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 150,
          ),
          Text(
            "$temperature",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 80,
          ),
          buildInitialData(context)
        ],
      ),
    );
  }

  Center buildLoadingIndicator() => Center(child: CircularProgressIndicator());

  Column buildInitialData(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextFormField(
          onSaved: (newValue) => cityName = newValue,
          decoration: InputDecoration(
              border: OutlineInputBorder(), hintText: 'Enter City'),
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          onPressed: () {
            context.read<WeatherCubit>().getWeather(cityName);
          },
          color: Colors.blue[400],
          child: Text(
            "Search",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
