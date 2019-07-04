import 'package:flutter/material.dart';
import 'package:flutter_14_provider_list_http/data/news_repository.dart';
import 'package:flutter_14_provider_list_http/viewmodels/list_news_viewmodel.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [
          Provider<NewsRepository>.value(value: NewsRepository()),
          ChangeNotifierProvider<ListNewsViewModel>.value(
              value: ListNewsViewModel(newsRepository: Provider.of(context)))
        ],
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
