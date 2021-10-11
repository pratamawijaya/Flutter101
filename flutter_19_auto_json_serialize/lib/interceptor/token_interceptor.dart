import 'package:dio/dio.dart';

class TokenInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    var apiKey = {'api_key': 'fb136fc5b8cfe1020e2c1ca6a1b82626'};
    options.queryParameters.addAll(apiKey);
    return handler.next(options);
  }
}
