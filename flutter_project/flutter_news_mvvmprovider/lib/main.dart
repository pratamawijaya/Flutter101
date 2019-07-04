import 'package:flutter/material.dart';
import 'package:flutter_news_mvvmprovider/provider_setup.dart';
import 'package:flutter_news_mvvmprovider/ui/router.dart';
import 'package:provider/provider.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        title: "YK News",
        initialRoute: '/',
        onGenerateRoute: Router.generateRoute,
      ),
    );
  }
}
