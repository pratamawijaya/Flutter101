import 'dart:convert';
import 'dart:core';

import 'package:flutter_news_mvvmprovider/data/response/get_news_response.dart';
import 'package:flutter_news_mvvmprovider/data/services/api.dart';
import 'package:flutter_news_mvvmprovider/domains/news.dart';

class NewsRepository {
  final Api _api;

  NewsRepository({Api api}) : _api = api;

  Future<List<News>> getNews(int page) async {
    const limit = 20;
    var offset = (page - 1) * limit;

    var path = _api.getNewsUrl(limit, offset);
    print("path url $path");

    var response = await _api.client.get(path);
    var parsed = GetNewsResponse.fromJson(json.decode(response.body));

    print("debug status ${parsed.status}");
    print("debug copyrigth ${parsed.copyright}");
    print("debug result size ${parsed.results.length}");

    return parsed.results;
  }
}
