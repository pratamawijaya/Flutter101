import 'package:flutter_14_provider_list_http/data/news_repository.dart';
import 'package:provider/provider.dart';

List<SingleChildCloneableWidget> providers = [
  ...independentServices,
  ...dependentServices,
  ...uiConsumableProviders,
];

List<SingleChildCloneableWidget> independentServices = [
  Provider.value(value: NewsRepository())
];

List<SingleChildCloneableWidget> dependentServices = [
];

List<SingleChildCloneableWidget> uiConsumableProviders = [];
