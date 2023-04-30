import 'package:flutter/material.dart';
import 'package:flutter_24_tabbar_riverpod/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  // runApp(const MyApp());
  runApp(const ProviderScope(child: MyApp()));
}
