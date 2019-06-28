import 'package:provider/provider.dart';

import 'data/services/api.dart';

List<SingleChildCloneableWidget> providers = [
  ...independentServices,
  ...dependentServices
];

List<SingleChildCloneableWidget> independentServices = [
  Provider.value(value: Api())
];

List<SingleChildCloneableWidget> dependentServices = [];
