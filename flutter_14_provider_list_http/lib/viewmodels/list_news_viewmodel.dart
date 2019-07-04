import 'package:flutter/material.dart';
import 'package:flutter_14_provider_list_http/data/models/news.dart';
import 'package:flutter_14_provider_list_http/data/news_repository.dart';

class ListNewsViewModel extends ChangeNotifier {
  // define repo ?
  NewsRepository _newsRepository;

  ListNewsViewModel({@required NewsRepository newsRepository})
      : _newsRepository = newsRepository;

  Future<List<News>> getListNews() async {
    return _newsRepository.getNews(1);
  }
}
