import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example/bloc/counter_bloc.dart';
import 'package:flutter_bloc_example/number_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainPage(),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterState counterState = context.watch<CounterBloc>().state;
    int number = context.select<CounterBloc, int>((counterBloc) =>
        (counterBloc.state is CounterValue)
            ? (counterBloc.state as CounterValue).value
            : null);

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Bloc Example v6.1.1"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  return NumberCard(
                    title: "Bloc\nBuilder",
                    number: (state is CounterValue) ? state.value : null,
                  );
                },
              ),
              SizedBox(width: 40),
              NumberCard(
                title: "Watch",
                number:
                    (counterState is CounterValue) ? counterState.value : null,
              ),
              SizedBox(width: 40),
              NumberCard(
                title: "Select",
                number: number,
              ),
            ],
          ),
          SizedBox(height: 40),
          RaisedButton(
            onPressed: () {
              context.read<CounterBloc>().add(Increment());
            },
            shape: StadiumBorder(),
            color: Colors.green[800],
            child: Text(
              "Increment",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
