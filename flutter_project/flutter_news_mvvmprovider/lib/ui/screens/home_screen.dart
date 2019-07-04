import 'package:flutter/material.dart';
import 'package:flutter_news_mvvmprovider/ui/base_widget.dart';
import 'package:flutter_news_mvvmprovider/ui/viewmodels/home_viewmodel.dart';
import 'package:flutter_news_mvvmprovider/ui/widgets/news_item.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController _scrollController =
      ScrollController(initialScrollOffset: 0.0, keepScrollOffset: true);

  _HomeScreenState() {
    _scrollController.addListener(() {
      var isEnd = _scrollController.offset ==
          _scrollController.position.maxScrollExtent;
      if (isEnd) {
        Future(() {
          print("get next page");
          var _homeViewModel = Provider.of<HomeViewModel>(context);
          if (!_homeViewModel.isLoading) {
            _homeViewModel.getNews();
          }
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseWidget<HomeViewModel>(
      model: Provider.of<HomeViewModel>(context),
      onModelReady: (model) => model.getNews(),
      builder: (context, model, child) => Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Text("YK News"),
          ),
          body: model.isLoading
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  controller: _scrollController,
                  itemCount: model.news.length,
                  itemBuilder: (context, index) {
                    return (index == model.news.length)
                        ? Container(
                            child: Align(
                              alignment: Alignment.center,
                              child: CircularProgressIndicator(),
                            ),
                          )
                        : NewsItem(model.news[index]);
                  })),
    );
  }
}
