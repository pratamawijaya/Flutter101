import 'package:intl/intl.dart';

class News {
  String url;
  String title;
  String section;
  String source;
  String publishedDate;

  News({this.url, this.title, this.section, this.source, this.publishedDate});

  News.fromJson(Map<String, dynamic> json) {
    var date = DateTime.parse(json['published_date'].toString());
    var formatter = new DateFormat('dd/MM/yyyy hh:mm');
    String formatted = formatter.format(date);

    url = json['url'];
    title = json['title'];
    section = json['section'];
    source = json['source'];
    publishedDate = formatted;
  }
}
