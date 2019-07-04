import 'package:flutter/cupertino.dart';
import 'package:flutter_news_mvvmprovider/data/repository/news_repository.dart';
import 'package:flutter_news_mvvmprovider/domains/news.dart';
import 'package:flutter_news_mvvmprovider/ui/viewmodels/base_model.dart';

class HomeViewModel extends BaseModel {
  NewsRepository _repo;

  int _currentPage = 1;

  HomeViewModel({@required NewsRepository repo}) : _repo = repo;

  List<News> news = List();

  int get getCurrentPage => _currentPage;

  Future getNews(int page) async {
    print("get news page $page");
    setIsLoading(true);
    var fetchedNews = await _repo.getNews(page);
    news.addAll(fetchedNews);

    for (var data in fetchedNews) {
      print("title ${data.title}");
    }

    notifyListeners();

//    print("news size ${news.length}");

    setIsLoading(false);
  }

  void setCurrentPage(int nextPage) {
    _currentPage = nextPage;
    notifyListeners();
  }
}
