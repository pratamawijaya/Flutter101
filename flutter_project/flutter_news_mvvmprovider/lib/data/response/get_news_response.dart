import 'package:flutter_news_mvvmprovider/domains/news.dart';

class GetNewsResponse {
  String status;
  String copyright;
  int numResults;
  List<News> results;

  GetNewsResponse({this.status, this.copyright, this.numResults, this.results});

  GetNewsResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    copyright = json['copyright'];
    numResults = json['num_results'];
    if (json['results'] != null) {
      results = new List<News>();
      json['results'].forEach((v) {
        results.add(new News.fromJson(v));
      });
    }
  }
}
