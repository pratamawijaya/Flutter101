import 'package:flutter/cupertino.dart';
import 'package:flutter_news_mvvmprovider/data/services/api.dart';
import 'package:flutter_news_mvvmprovider/domains/news.dart';
import 'package:flutter_news_mvvmprovider/ui/viewmodels/base_model.dart';

class HomeViewModel extends BaseModel {
  Api _api;

  HomeViewModel({@required Api api}) : _api = api;

  List<News> news;

  Future getNews(int page) async {
    setBusy(true);
    news = await _api.getNews(page);
    setBusy(false);
  }
}
