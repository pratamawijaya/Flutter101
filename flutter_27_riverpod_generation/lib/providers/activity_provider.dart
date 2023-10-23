import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_27_riverpod_generation/models/activity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'activity_provider.g.dart';

@riverpod
Future<Activity> activity(ActivityRef ref) async {
  final response = await http.get(Uri.https('boredapi.com', '/api/activity'));

  final json = jsonDecode(response.body) as Map<String, dynamic>;

  return Activity.fromJson(json);
}
