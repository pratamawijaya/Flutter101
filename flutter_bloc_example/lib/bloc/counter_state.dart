part of 'counter_bloc.dart';

abstract class CounterState extends Equatable {
  const CounterState();

  @override
  List<Object> get props => [];
}

class CounterInitial extends CounterState {}

class CounterValue extends CounterState {
  final int value;

  CounterValue(this.value);

  @override
  List<Object> get props => [value];
}
