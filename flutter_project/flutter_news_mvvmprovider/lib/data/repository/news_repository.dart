import 'dart:convert';
import 'dart:core';

import 'package:flutter_news_mvvmprovider/data/services/api.dart';
import 'package:flutter_news_mvvmprovider/domains/news.dart';

class NewsRepository {
  final Api _api;

  NewsRepository({Api api}) : _api = api;

  Future<List<News>> getNews(int page) async {
    const limit = 10;
    var offset = (page - 1) * limit;

    var news = List<News>();
    var path = _api.getNewsUrl(limit, offset);
    print("path url $path");

    var response = await _api.client.get(_api.uriBuilder(path));
    var parsed = json.decode(response.body) as String;

    print("debug $parsed");

    return news;
  }
}
