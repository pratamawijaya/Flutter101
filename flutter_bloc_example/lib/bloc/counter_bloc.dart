import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial());

  @override
  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    if (event is Increment) {
      if (state is CounterInitial) {
        yield CounterValue(0);
      } else {
        yield CounterValue((state as CounterValue).value + 1);
      }
    }
  }
}
