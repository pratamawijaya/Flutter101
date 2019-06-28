import 'package:flutter/material.dart';
import 'package:flutter_news_mvvmprovider/ui/router.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "YK News",
      initialRoute: '/',
      onGenerateRoute: Router.generateRoute,
    );
  }
}
