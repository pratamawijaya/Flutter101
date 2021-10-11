import 'package:alice/alice.dart';
import 'package:dio/dio.dart';
import 'package:flutter_19_auto_json_serialize/logging/logging_interceptor.dart';
import 'package:flutter_19_auto_json_serialize/model/user.dart';

class DioClient {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://reqres.in/api',
      connectTimeout: 5000,
      receiveTimeout: 3000,
    ),
  )
    ..interceptors.add(LoggingInterceptor());

  Future<User?> getUser({required String id}) async {
    print("get data user $id");
    User? user;
    try {
      Response userData = await _dio.get('/users/$id');

      print('User info ${userData.data}');

      user = User.fromJson(userData.data);
    } on DioError catch (e) {
      if (e.response != null) {
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
      } else {
        print('Error sending request');
        print(e.message);
      }
    }
    return user;
  }
}
