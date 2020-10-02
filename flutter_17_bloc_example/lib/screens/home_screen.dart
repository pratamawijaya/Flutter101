import 'package:flutter/material.dart';
import 'package:flutter_17_bloc_example/injection_container.dart';
import 'package:flutter_17_bloc_example/screens/bloc/quote_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: buildBody(context),
      ),
    );
  }

  BlocProvider<QuoteBloc> buildBody(BuildContext context) {
    return BlocProvider<QuoteBloc>(
      create: (_) => sl<QuoteBloc>(),
      child: Center(
        child: Column(
          children: [
            BlocBuilder<QuoteBloc, QuoteState>(builder: (context, state) {
              if (state is Loading) {
                return Text("Loading");
              } else if (state is Loaded) {
                return Text("Quote of the day : " + state.quote.quote);
              } else {
                return Text("Hello");
              }
            }),
            RaisedButton(
              onPressed: () {
                BlocProvider.of<QuoteBloc>(context).add(GetRandomQuote());
              },
              child: Text("Fetch"),
            )
          ],
        ),
      ),
    );
  }
}
