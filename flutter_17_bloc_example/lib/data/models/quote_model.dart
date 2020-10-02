import 'package:flutter_17_bloc_example/domain/entity/quote.dart';

class QuoteModel extends Quote {
  QuoteModel(
      {String quote,
      String author,
      String category,
      String date,
      String background})
      : super(quote, author, category, date, background);

  factory QuoteModel.fromJson(Map<String, dynamic> json) {
    return QuoteModel(
        quote: json["quote"],
        author: json["author"],
        category: json["category"],
        date: json["date"],
        background: json["background"]);
  }
}
