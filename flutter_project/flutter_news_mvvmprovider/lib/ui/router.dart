import 'package:flutter/material.dart';
import 'package:flutter_news_mvvmprovider/domains/news.dart';
import 'package:flutter_news_mvvmprovider/ui/screens/detail_news_screen.dart';
import 'package:flutter_news_mvvmprovider/ui/screens/home_screen.dart';

const String initialRoute = "/";

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/detail':
        var news = settings.arguments as News;
        return MaterialPageRoute(builder: (_) => DetailNewsScreen(news));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
