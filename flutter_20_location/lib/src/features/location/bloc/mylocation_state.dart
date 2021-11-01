part of 'mylocation_cubit.dart';

@immutable
abstract class MylocationState {}

class MylocationInitial extends MylocationState {}

class MyLocationLoading extends MylocationState {}

class MyLocationError extends MylocationState {
  String message;

  MyLocationError(this.message);
}

class MyLocationFound extends MylocationState {
  Position location;

  MyLocationFound(this.location);
}
