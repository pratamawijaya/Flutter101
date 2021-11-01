import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_20_location/src/features/location/bloc/mylocation_cubit.dart';

class MyLocation extends StatefulWidget {
  const MyLocation({Key? key}) : super(key: key);

  static const routeName = '/location';

  @override
  _MyLocationState createState() => _MyLocationState();
}

class _MyLocationState extends State<MyLocation> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sample Location"),
      ),
      body: Center(
        child: BlocBuilder<MylocationCubit, MylocationState>(
            bloc: BlocProvider.of<MylocationCubit>(context)
              ..getLastKnownPosition(),
            builder: (context, state) {
              if (state is MyLocationLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is MyLocationFound) {
                var lat = state.location.latitude;
                var lng = state.location.longitude;
                return Center(child: Text("Success location: $lat $lng"));
              } else if (state is MyLocationError) {
                return Text("Result ${state.message}");
              } else {
                return const Text("Unknown");
              }
            }),
      ),
    );
  }
}
