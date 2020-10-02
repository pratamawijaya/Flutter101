part of 'quote_bloc.dart';

abstract class QuoteState extends Equatable {
  const QuoteState();
}

class Loading extends QuoteState {
  @override
  List<Object> get props => [];
}

class Loaded extends QuoteState {
  final Quote quote;

  Loaded(this.quote);

  @override
  List<Object> get props => [quote];
}

class Error extends QuoteState {
  final String message;

  Error(this.message);

  @override
  List<Object> get props => [message];
}

class QuoteInitial extends QuoteState {
  @override
  List<Object> get props => [];
}
