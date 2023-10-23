# flutter_27_riverpod_generation

## Why riverpod

- Asycn request will be cached locally
- error handling included
- loading state included

## Sample

```dart
// Fetches the list of packages from pub.dev
@riverpod
Future<List<Package>> fetchPackages(
  FetchPackagesRef ref, {
  required int page,
  String search = '',
}) async {
  final dio = Dio();
  // Fetch an API. Here we're using package:dio, but we could use anything else.
  final response = await dio.get<List<Object?>>(
    'https://pub.dartlang.org/api/search?page=$page&q=${Uri.encodeQueryComponent(search)}',
  );

  // Decode the JSON response into a Dart class.
  return response.data?.map(Package.fromJson).toList() ?? const [];
}
```

This snippet is all the business logic you need for a "search as we type" + "pull to refresh" + "infinite list", while handling error/loading states.
