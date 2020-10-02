import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_17_bloc_example/domain/entity/quote.dart';
import 'package:flutter_17_bloc_example/domain/usecase/GetQuoteOfTheDayUseCase.dart';

part 'quote_event.dart';

part 'quote_state.dart';

class QuoteBloc extends Bloc<QuoteEvent, QuoteState> {
  final GetQuoteOfTheDayUseCase useCase;

  QuoteBloc({this.useCase}) : super(QuoteInitial());

  @override
  Stream<QuoteState> mapEventToState(
    QuoteEvent event,
  ) async* {
    if (event is GetRandomQuote) {
      yield Loading();
      final result = await useCase.call();
      yield Loaded(result);
    }
  }
}
