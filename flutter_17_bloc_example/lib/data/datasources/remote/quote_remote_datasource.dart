import 'package:flutter_17_bloc_example/data/models/quote_model.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

abstract class QuoteRemoteDatasource {
  Future<QuoteModel> getQuoteOfTheDay();
}

class QuoteRemoteDatasourceImpl extends QuoteRemoteDatasource {
  final http.Client client;

  QuoteRemoteDatasourceImpl({this.client});

  @override
  Future<QuoteModel> getQuoteOfTheDay() {
    return _getQuoteFromUrl(
        "https://quotes.rest/qod?category=inspire&language=en");
  }

  Future<QuoteModel> _getQuoteFromUrl(String url) async {
    final response = await client.get(url, headers: {
      'Content-Type': 'application/json',
    });

    return QuoteModel.fromJson(json.decode(response.body));
  }
}
