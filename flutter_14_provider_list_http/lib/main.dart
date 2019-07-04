import 'package:flutter/material.dart';
import 'package:flutter_14_provider_list_http/viewmodels/list_news_viewmodel.dart';
import 'package:provider/provider.dart';

import 'data/provider_setup.dart';

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
        providers: providers,
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
    return ChangeNotifierProvider<ListNewsViewModel>.value(
      value: ListNewsViewModel(newsRepository: Provider.of(context)),
      child: Consumer<ListNewsViewModel>(
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(),
              body: Center(
                  child: Column(
                children: <Widget>[
                  Text("Hello"),
                  FlatButton(
                    color: Colors.blue,
                    child: Text("Press me"),
                    onPressed: () {
                      model.getListNews();
                    },
                  )
                ],
              )),
            ),
      ),
    );
  }
}
