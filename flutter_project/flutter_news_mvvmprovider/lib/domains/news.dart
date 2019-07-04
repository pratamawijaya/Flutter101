import 'package:flutter/cupertino.dart';
import 'package:flutter_news_mvvmprovider/domains/images.dart';
import 'package:intl/intl.dart';

class News {
  String url;
  String title;
  String section;
  String source;
  String publishedDate;
  List<Images> multimedia;

  News(
      {this.url,
      this.title,
      this.section,
      this.source,
      this.publishedDate,
      this.multimedia});

  News.fromJson(Map<String, dynamic> json) {
    var date = DateTime.parse(json['published_date'].toString());
    var formatter = new DateFormat('dd/MM/yyyy hh:mm');
    String formatted = formatter.format(date);

    url = json['url'];
    title = json['title'];
    section = json['section'];
    source = json['source'];
    publishedDate = formatted;

    var mulmed = json['multimedia'];

    multimedia = new List<Images>();

    if (mulmed is String) {
      multimedia.add(Images(url: ""));
    } else {
      if (json['multimedia'] != null) {
        json['multimedia'].forEach((v) {
          multimedia.add(new Images.fromJson(v));
        });
      }
    }
  }
}
