import 'package:flutter/material.dart';
import 'package:flutter_news_mvvmprovider/ui/base_widget.dart';
import 'package:flutter_news_mvvmprovider/ui/viewmodels/home_viewmodel.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController _controller =
      ScrollController(initialScrollOffset: 0.0, keepScrollOffset: true);

  @override
  Widget build(BuildContext context) {
    return BaseWidget<HomeViewModel>(
      model: HomeViewModel(repo: Provider.of(context)),
      onModelReady: (model) => model.getNews(1),
      builder: (context, model, child) => Scaffold(
          appBar: AppBar(
            title: Text("YK News"),
          ),
          body: model.isLoading
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  controller: _controller,
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
