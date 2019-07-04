import 'package:flutter/cupertino.dart';
import 'package:flutter_news_mvvmprovider/data/repository/news_repository.dart';
import 'package:flutter_news_mvvmprovider/domains/news.dart';
import 'package:flutter_news_mvvmprovider/ui/viewmodels/base_model.dart';

class HomeViewModel extends BaseModel {
  NewsRepository _repo;

  int _currentPage = 1;

  HomeViewModel({@required NewsRepository repo}) : _repo = repo;

  List<News> news;

  int get getCurrentPage => _currentPage;

  Future getNews(int page) async {
    print("get news page $page");
    setIsLoading(true);
    news = await _repo.getNews(page);
    for (var data in news) {
      print("title ${data.title}");
    }
    setIsLoading(false);
  }

  void setCurrentPage(int nextPage) {
    _currentPage = nextPage;
  }
}
