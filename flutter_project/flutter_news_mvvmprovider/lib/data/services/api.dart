import 'dart:convert';
import 'dart:core';

import 'package:flutter_news_mvvmprovider/domains/news.dart';
import 'package:http/http.dart' as http;

class Api {
  static const url = "https://api.nytimes.com/svc/";

  var _client = new http.Client();

  Future<List<News>> getNews(int page) async {
    var limit = 10;
    var offset = (page - 1) * limit;

    var news = List<News>();
    var path = "news/v3/content/all/all.json?limit=$limit&offset=$offset";
    var response = await _client.get(_uriBuilder(path));

    var parsed = json.decode(response.body) as String;

    print("debugged $parsed");

    return news;
  }

  Uri _uriBuilder(String path) {
    var queryParameters = {'api-key': '4sUaHSzmzmOJilzfRD6aAlSNLPbz4doN'};
    var uri = Uri.http(url, path, queryParameters);
    return uri;
  }
}
