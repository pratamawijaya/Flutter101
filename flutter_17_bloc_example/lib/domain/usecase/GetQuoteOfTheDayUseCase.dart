import 'package:flutter_17_bloc_example/domain/entity/quote.dart';
import 'package:flutter_17_bloc_example/domain/repositories/quote_repository.dart';

class GetQuoteOfTheDayUseCase {
  final QuoteRepository quoteRepository;

  GetQuoteOfTheDayUseCase({this.quoteRepository});

  Future<Quote> call() async {
    return await quoteRepository.getQuoteOfTheDay();
  }
}
