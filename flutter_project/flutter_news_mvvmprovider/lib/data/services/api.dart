import 'dart:convert';
import 'dart:core';
import 'dart:core' as prefix0;

import 'package:flutter_news_mvvmprovider/domains/news.dart';
import 'package:http/http.dart' as http;

class Api {
  static const url = "https://api.nytimes.com/svc/";

  var client = new http.Client();

  Future<List<News>> getNews(int page) async {
    var limit = 10;
    var offset = (page - 1) * limit;

    var news = List<News>();
    var path = "news/v3/content/all/all.json";
    var response = await client.get(uriBuilder(path));

    var parsed = json.decode(response.body) as String;

    print("debugged $parsed");

    return news;
  }

  Uri uriBuilder(String path, [Map<String, String> queryParams]) {
    var queryParameters = {'api-key': '4sUaHSzmzmOJilzfRD6aAlSNLPbz4doN'};
    var uri = Uri.http(url, path, queryParameters);
    return uri;
  }
}
