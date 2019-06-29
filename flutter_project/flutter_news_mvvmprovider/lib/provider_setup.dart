import 'package:flutter_news_mvvmprovider/data/repository/news_repository.dart';
import 'package:provider/provider.dart';

import 'data/services/api.dart';

List<SingleChildCloneableWidget> providers = [
  ...independentServices,
  ...dependentServices
];

List<SingleChildCloneableWidget> independentServices = [
  Provider.value(value: Api())
];

List<SingleChildCloneableWidget> dependentServices = [
  ProxyProvider<Api, NewsRepository>(
    builder: (context, api, newsRepository) => NewsRepository(api: api),
  )
];
