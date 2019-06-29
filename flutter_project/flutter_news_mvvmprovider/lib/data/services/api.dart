import 'dart:core';

import 'package:http/http.dart' as http;

class Api {
  static const url = "https://api.nytimes.com/svc/";

  var client = new http.Client();

  String getNewsUrl(int limit, int offset) {
    return "$url/news/v3/content/all/all.json?limit=$limit&offset=$offset";
  }

  Uri uriBuilder(String path) {
    var queryParameters = {'api-key': '4sUaHSzmzmOJilzfRD6aAlSNLPbz4doN'};
    var uri = Uri.http(url, path, queryParameters);
    return uri;
  }
}
