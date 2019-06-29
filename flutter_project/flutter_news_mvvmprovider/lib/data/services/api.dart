import 'dart:core';

import 'package:http/http.dart' as http;

class Api {
  static const url = "https://api.nytimes.com";
  static const _apikey = "4sUaHSzmzmOJilzfRD6aAlSNLPbz4doN";

  var client = new http.Client();

  String getNewsUrl(int limit, int offset) {
    return "$url/svc/news/v3/content/all/all?limit=$limit&offset=$offset&api-key=$_apikey";
  }

//  Uri uriBuilder(String path) {
//    var queryParameters = {'api-key': '4sUaHSzmzmOJilzfRD6aAlSNLPbz4doN'};
//    var uri = Uri.https(url, path, queryParameters);
//    return uri;
//  }
}
