import 'dart:core';
import 'package:http/http.dart' as http;

import 'package:flutter_14_provider_list_http/data/models/news.dart';

class NewsRepository {
  Future<List<News>> getNews(int page) async {
    var url = "http";

    var response = await http.get(url);

    //
  }
}
