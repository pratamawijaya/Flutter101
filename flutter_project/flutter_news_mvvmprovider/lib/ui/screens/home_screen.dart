import 'package:flutter/material.dart';
import 'package:flutter_news_mvvmprovider/ui/base_widget.dart';
import 'package:flutter_news_mvvmprovider/ui/viewmodels/home_viewmodel.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseWidget<HomeViewModel>(
      model: HomeViewModel(repo: Provider.of(context)),
      onModelReady: (model) => model.getNews(1),
      builder: (context, model, child) => Scaffold(
          body: model.isLoading
              ? Center(child: CircularProgressIndicator())
              : Center(
                  child: Text("berhasil ambil data"),
                )),
    );
  }
}
