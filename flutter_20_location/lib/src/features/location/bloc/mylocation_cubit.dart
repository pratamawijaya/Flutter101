import 'package:bloc/bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:meta/meta.dart';

part 'mylocation_state.dart';

enum PositionItemType {
  log,
  position,
}

class PositionItem {
  PositionItem(this.type, this.displayValue);

  final PositionItemType type;
  final String displayValue;
}

class MylocationCubit extends Cubit<MylocationState> {
  MylocationCubit() : super(MylocationInitial());

  final GeolocatorPlatform _geolocatorPlatform = GeolocatorPlatform.instance;

  Future<void> getLastKnownPosition() async {
    print("get last known location");

    emit(MyLocationLoading());
    final position = await _geolocatorPlatform.getLastKnownPosition();
    if (position != null) {
      emit(MyLocationFound(position));
    } else {
      emit(MyLocationError("No Last Known Location"));
      // get current location
      getCurrentLocation();
    }
  }

  Future<void> getCurrentLocation() async {
    print("get current location");

    emit(MyLocationLoading());

    final hasPermission = await _checkingPermission();

    if (!hasPermission) {
      return;
    }

    final position = await _geolocatorPlatform.getCurrentPosition();

    emit(MyLocationFound(position));
  }

  Future<bool> _checkingPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await _geolocatorPlatform.isLocationServiceEnabled();

    if (!serviceEnabled) {
      emit(MyLocationError("Service Disabled"));
      return false;
    }

    permission = await _geolocatorPlatform.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await _geolocatorPlatform.requestPermission();
      if (permission == LocationPermission.denied) {
        emit(MyLocationError("Permission Denied"));
        return false;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      emit(MyLocationError("Permission Denied"));
      return false;
    }

    return true;
  }
}
