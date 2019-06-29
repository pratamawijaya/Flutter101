import 'package:flutter/cupertino.dart';
import 'package:flutter_news_mvvmprovider/data/repository/news_repository.dart';
import 'package:flutter_news_mvvmprovider/domains/news.dart';
import 'package:flutter_news_mvvmprovider/ui/viewmodels/base_model.dart';

class HomeViewModel extends BaseModel {
  NewsRepository _repo;

  HomeViewModel({@required NewsRepository repo}) : _repo = repo;

  List<News> news;

  Future getNews(int page) async {
    setBusy(true);
    news = await _repo.getNews(page);
    setBusy(false);
  }
}
