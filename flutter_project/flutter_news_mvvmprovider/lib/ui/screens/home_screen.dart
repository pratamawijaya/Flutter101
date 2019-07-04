import 'package:flutter/material.dart';
import 'package:flutter_news_mvvmprovider/ui/base_widget.dart';
import 'package:flutter_news_mvvmprovider/ui/viewmodels/home_viewmodel.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController _scrollController = ScrollController();
  final _scrollThreshold = 200.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    Future(() {
      var homeViewModel = Provider.of(context);
      final maxScroll = _scrollController.position.maxScrollExtent;
      final currentScroll = _scrollController.position.pixels;

      print("current scroll $currentScroll");

      if (maxScroll - currentScroll <= _scrollThreshold) {
        print("scrolling next");
        var current = homeViewModel.getCurrentPage;
        var nextPage = current + 1;
        homeViewModel.setCurrentPage(nextPage);

        homeViewModel.getNews(nextPage);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BaseWidget<HomeViewModel>(
      model: HomeViewModel(repo: Provider.of(context)),
      onModelReady: (model) => model.getNews(model.getCurrentPage),
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
                    return ListTile(
                      title: Text(
                        model.news[index].title,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(model.news[index].section),
                    );
                  })),
    );
  }
}
