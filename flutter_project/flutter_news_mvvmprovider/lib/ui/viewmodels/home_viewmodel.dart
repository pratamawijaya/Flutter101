import 'package:flutter/cupertino.dart';
import 'package:flutter_news_mvvmprovider/data/repository/news_repository.dart';
import 'package:flutter_news_mvvmprovider/domains/news.dart';
import 'package:flutter_news_mvvmprovider/ui/viewmodels/base_model.dart';

class HomeViewModel extends BaseModel {
  NewsRepository _repo;

  bool _isLoadmore = false;

  HomeViewModel({@required NewsRepository repo}) : _repo = repo;

  List<News> news = [];
  int _currentPage = 0;

  void getNews() async {
    print("get news page $_currentPage");
    if (_currentPage >=1) {
      _isLoadmore = true;
    }
    if (!_isLoadmore) {
      setIsLoading(true);
    }

    _currentPage = _currentPage + 1;
    var response = await _repo.getNews(_currentPage);
    news.addAll(response);

    for (var data in news) {
      print("title ${data.title}");
    }

    print("news size ${news.length}");

    _isLoadmore = false;
    setIsLoading(false);
  }
}
