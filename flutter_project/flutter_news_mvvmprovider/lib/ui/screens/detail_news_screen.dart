import 'package:flutter/material.dart';
import 'package:flutter_news_mvvmprovider/domains/news.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DetailNewsScreen extends StatelessWidget {
  News news;

  DetailNewsScreen(this.news);

  final _key = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("${news.title}"),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: WebView(
                key: _key,
                javascriptMode: JavascriptMode.unrestricted,
                initialUrl: news.url,
              ),
            )
          ],
        ));
  }
}
