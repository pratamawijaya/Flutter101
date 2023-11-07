import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_car_rental/main.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

final positionProvider = StreamProvider.autoDispose<Placemark?>((ref) {
  final streamController = StreamController<Placemark?>();

  _determinePosition(streamController);

  return streamController.stream;
});

void _determinePosition(StreamController<Placemark?> streamController) async {
  bool serviceEnabled;
  LocationPermission permission;

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Location services are not enabled don't continue
    // accessing the position and request users of the
    // App to enable the location services.
    streamController.addError('Location services are disabled.');
    return;
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Permissions are denied, next time you could try
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale
      // returned true. According to Android guidelines
      // your App should show an explanatory UI now.
      streamController.addError('Location permissions are denied');
      return;
    }
  }

  if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately.
    streamController.addError(
        'Location permissions are permanently denied, we cannot request permissions.');
    return;
  }

  // When we reach here, permissions are granted and we can
  // continue accessing the position of the device.
  const LocationSettings locationSettings = LocationSettings(
    accuracy: LocationAccuracy.high,
    distanceFilter: 100,
  );

  Geolocator.getPositionStream(locationSettings: locationSettings)
      .listen((Position position) async {
    await getLocationByLatLng(position, streamController).catchError((e) {
      logger.e("get location by lat lng error : ${e.toString()}");
    });
  });

  Position initialPosition = await Geolocator.getCurrentPosition(
    desiredAccuracy: LocationAccuracy.high,
  );

  await getLocationByLatLng(initialPosition, streamController).catchError((e) {
    logger.e("get location by lat lng error : ${e.toString()}");
  });
}

Future<void> getLocationByLatLng(
    Position position, StreamController<Placemark?> streamController) async {
  await placemarkFromCoordinates(position.latitude, position.longitude)
      .then((List<Placemark> placemarks) {
    Placemark place = placemarks[0];
    streamController.add(place);
  });
}
