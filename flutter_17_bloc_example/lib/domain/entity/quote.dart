import 'package:equatable/equatable.dart';

class Quote extends Equatable {
  final String quote;
  final String author;
  final String category;
  final String date;
  final String background;

  Quote(this.quote, this.author, this.category, this.date, this.background);

  @override
  List<Object> get props => [quote, author, category, date, background];
}
