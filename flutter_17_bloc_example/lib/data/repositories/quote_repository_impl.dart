import 'package:flutter_17_bloc_example/data/datasources/remote/quote_remote_datasource.dart';
import 'package:flutter_17_bloc_example/domain/entity/quote.dart';
import 'package:flutter_17_bloc_example/domain/repositories/quote_repository.dart';

class QuoteRepositoryImpl extends QuoteRepository {
  final QuoteRemoteDatasource remoteDatasource;

  QuoteRepositoryImpl({this.remoteDatasource});

  @override
  Future<Quote> getQuoteOfTheDay() async {
    return await remoteDatasource.getQuoteOfTheDay();
  }
}
