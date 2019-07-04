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

  var _homeViewModel;

  @override
  void initState() {
    super.initState();
    Future(() {
      _homeViewModel = HomeViewModel(repo: Provider.of(context));
    });
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    Future(() {
      double maxScroll = _scrollController.position.maxScrollExtent;
      double currentScroll = _scrollController.position.pixels;
      double delta = 200.0; // or something else..
      if (maxScroll - currentScroll <= delta) {
        // whatever you determine here
        //.. load more
        if (!_homeViewModel.isLoading) {
          print("load more");
          var current = _homeViewModel.getCurrentPage;
          var nextPage = current + 1;
          print("scroll nextpage $nextPage");
          _homeViewModel.getNews(nextPage);
        }
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
