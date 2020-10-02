import 'package:flutter_17_bloc_example/domain/entity/quote.dart';

abstract class QuoteRepository {
  Future<Quote> getQuoteOfTheDay();
}
